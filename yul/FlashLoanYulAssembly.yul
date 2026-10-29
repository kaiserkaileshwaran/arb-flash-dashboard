// ============================================================================
// Pure-Yul EVM Assembly Flash-Swap, Multi-Route Bundle & Atomic Mudrex Settler
// File: yul/FlashLoanYulAssembly.yul
// Selectors:
//   - 0x679d86a7 / 0x29e295c5 : authorizedExecutors(address) -> returns 1 if authorized
//   - 0x7c08b964              : setActiveRelayer(address) -> owner-only relayer rotation
//   - 0x3260f1cc              : executeDirectPoolFlashSwap((address,address,address,address,uint256,uint256,bool,bool),uint256)
//   - 0xd34ac4bb              : executeMultiMaxDirectPoolFlashSwaps((address,address,address,address,uint256,uint256,bool,bool)[],uint256[])
//   - fallback                : Authenticated UniswapV3 / PancakeV3 / SushiV3 / Algebra callback handler
// Security Invariants (v25.0):
//   - Storage slot 0 (`activePool`): strict callback lock; callback reverts unless `caller() == sload(0)` and `sload(0) != 0`.
//   - Storage slot 1 (`activeRelayer`): mutable authorized relayer address (rotatable only by OWNER 0xFF3c...89BE).
//   - Entrypoints `0x3260f1cc` and `0xd34ac4bb` revert unless `caller() == OWNER` or `caller() == sload(1)`.
// ============================================================================

object "Y" {
    code {
        datacopy(0, dataoffset("r"), datasize("r"))
        return(0, datasize("r"))
    }
    object "r" {
        code {
            if iszero(calldatasize()) { stop() }
            let ownerAddr := 0xFF3c34DAF159741C931F7c421350f8289A9d89BE
            let s := shr(224, calldataload(0))

            // authorizedExecutors(address) -> 0x679d86a7 (canonical) or 0x29e295c5 (legacy alias)
            if or(eq(s, 0x679d86a7), eq(s, 0x29e295c5)) {
                let q := and(calldataload(4), 0xffffffffffffffffffffffffffffffffffffffff)
                let rel := sload(1)
                let isAuth := or(eq(q, ownerAddr), and(iszero(iszero(rel)), eq(q, rel)))
                mstore(0, isAuth)
                return(0, 32)
            }

            // setActiveRelayer(address) -> 0x7c08b964
            if eq(s, 0x7c08b964) {
                if iszero(eq(caller(), ownerAddr)) { revert(0, 0) }
                let newRel := and(calldataload(4), 0xffffffffffffffffffffffffffffffffffffffff)
                sstore(1, newRel)
                stop()
            }

            // Callback branch: strictly locked to activePool stored in slot 0
            if and(iszero(eq(s, 0x3260f1cc)), iszero(eq(s, 0xd34ac4bb))) {
                let activePool := sload(0)
                if or(iszero(activePool), iszero(eq(caller(), activePool))) {
                    revert(0, 0)
                }
                let a0 := calldataload(4)
                let owed := a0
                if slt(a0, 0) { owed := calldataload(36) }
                if eq(calldataload(100), 64) {
                    if gt(owed, calldataload(164)) { revert(0, 0) }
                    mstore(0, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                    mstore(4, caller())
                    mstore(36, owed)
                    if iszero(call(gas(), calldataload(132), 0, 0, 68, 0, 0)) { revert(0, 0) }
                    stop()
                }
                let innerPool := and(calldataload(132), 0xffffffffffffffffffffffffffffffffffffffff)
                if iszero(innerPool) { revert(0, 0) }
                let z0 := calldataload(196)
                let lim := 1461446703485210103287273052203988822378723970341
                if z0 { lim := 4295128740 }
                mstore(0, 0x128acb0800000000000000000000000000000000000000000000000000000000)
                mstore(4, caller())
                mstore(36, z0)
                mstore(68, sub(0, owed))
                mstore(100, lim)
                mstore(132, 160)
                mstore(164, 64)
                mstore(196, calldataload(164))
                mstore(228, calldataload(228))
                sstore(0, innerPool)
                let okInner := call(gas(), innerPool, 0, 0, 260, 0, 0)
                sstore(0, activePool)
                if iszero(okInner) { revert(0, 0) }
                stop()
            }

            // Entrypoints 0x3260f1cc & 0xd34ac4bb: require caller() == ownerAddr or activeRelayer
            let authRel := sload(1)
            if iszero(or(eq(caller(), ownerAddr), and(iszero(iszero(authRel)), eq(caller(), authRel)))) {
                revert(0, 0)
            }

            let n := 1
            let b0 := 4
            let f0 := 260
            if eq(s, 0xd34ac4bb) {
                let lo := add(4, calldataload(4))
                n := calldataload(lo)
                b0 := add(lo, 32)
                f0 := add(36, calldataload(36))
            }
            let tb := calldataload(add(b0, 64))
            mstore(0, 0x70a0823100000000000000000000000000000000000000000000000000000000)
            mstore(4, address())
            if iszero(staticcall(gas(), tb, 0, 36, 0, 32)) { revert(0, 0) }
            let bal0 := mload(0)
            for { let i := 0 } lt(i, n) { i := add(i, 1) } {
                let b := add(b0, shl(8, i))
                let amt := calldataload(add(b, 128))
                let req := add(calldataload(add(b, 160)), calldataload(add(f0, shl(5, i))))
                if or(iszero(amt), gt(req, amt)) { revert(0, 0) }
                let outerPool := and(calldataload(add(b, 32)), 0xffffffffffffffffffffffffffffffffffffffff)
                if iszero(outerPool) { revert(0, 0) }
                let z1 := calldataload(add(b, 224))
                let lim := 1461446703485210103287273052203988822378723970341
                if z1 { lim := 4295128740 }
                mstore(0, 0x128acb0800000000000000000000000000000000000000000000000000000000)
                mstore(4, address())
                mstore(36, z1)
                mstore(68, sub(0, amt))
                mstore(100, lim)
                mstore(132, 160)
                mstore(164, 128)
                mstore(196, calldataload(b))
                mstore(228, tb)
                mstore(260, calldataload(add(b, 192)))
                mstore(292, sub(amt, req))
                sstore(0, outerPool)
                let okSwap := call(gas(), outerPool, 0, 0, 324, 0, 0)
                sstore(0, 0)
                if iszero(okSwap) { revert(0, 0) }
            }
            mstore(0, 0x70a0823100000000000000000000000000000000000000000000000000000000)
            mstore(4, address())
            if iszero(staticcall(gas(), tb, 0, 36, 0, 32)) { revert(0, 0) }
            let bal1 := mload(0)
            if iszero(gt(bal1, bal0)) { revert(0, 0) }
            let prof := sub(bal1, bal0)
            if and(gt(prof, 0), gt(calldataload(f0), 0)) {
                let pay := prof
                if eq(tb, 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1) {
                    let reimb := pay
                    if gt(pay, 12000000000000) {
                        reimb := 12000000000000
                        let surp := sub(pay, reimb)
                        let settlePool := 0x6f38e884725a116C9C7fBF208e79FE8828a2595F
                        mstore(0, 0x128acb0800000000000000000000000000000000000000000000000000000000)
                        mstore(4, 0xd2529585059e3e5c09c912F0F9570000c2a53F05)
                        mstore(36, 1)
                        mstore(68, surp)
                        mstore(100, 4295128740)
                        mstore(132, 160)
                        mstore(164, 64)
                        mstore(196, tb)
                        mstore(228, surp)
                        sstore(0, settlePool)
                        let okSettle := call(gas(), settlePool, 0, 0, 260, 0, 0)
                        sstore(0, 0)
                        if iszero(okSettle) { revert(0, 0) }
                    }
                    mstore(0, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000)
                    mstore(4, reimb)
                    if iszero(call(gas(), tb, 0, 0, 36, 0, 0)) { revert(0, 0) }
                    if iszero(call(gas(), caller(), reimb, 0, 0, 0, 0)) { revert(0, 0) }
                    mstore(0, prof)
                    return(0, 32)
                }
                mstore(0, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                mstore(4, 0xd2529585059e3e5c09c912F0F9570000c2a53F05)
                mstore(36, pay)
                if iszero(call(gas(), tb, 0, 0, 68, 0, 0)) { revert(0, 0) }
            }
            mstore(0, prof)
            return(0, 32)
        }
    }
}
