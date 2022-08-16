{- | Module: Plutarch.Context
 Copyright: (C) Liqwid Labs 2022
 License: Proprietary
 Maintainer: Koz Ross <koz@mlabs.city>
 Portability: GHC only
 Stability: Experimental

 Base builder and other specific builders.
-}
module Plutarch.Context (
    B.Builder (..),
    B.BaseBuilder (..),
    B.UTXO (..),
    B.output,
    B.input,
    B.referenceInput,
    B.credential,
    B.pubKey,
    B.script,
    B.withRefTxId,
    B.withDatum,
    B.withInlineDatum,
    B.withReferenceScript,
    B.withValue,
    B.withRefIndex,
    B.withRef,
    B.signedWith,
    B.mint,
    B.extraData,
    B.txId,
    B.fee,
    B.unpack,
    B.timeRange,
    B.mkOutRefIndices,
    S.SpendingBuilder (..),
    S.withSpendingUTXO,
    S.withSpendingOutRef,
    S.withSpendingOutRefId,
    S.withSpendingOutRefIdx,
    S.buildSpending',
    S.buildSpending,
    S.tryBuildSpending,
    S.checkSpending,
    M.MintingBuilder (..),
    M.withMinting,
    M.buildMinting',
    M.buildMinting,
    M.tryBuildMinting,
    M.checkMinting,
    T.TxInfoBuilder (..),
    T.spends,
    T.mints,
    T.buildTxInfo,
    Sub.buildTxOut,
    Sub.buildTxInInfo,
    Sub.buildTxOuts,
    Sub.buildTxInInfos,
    Sub.buildDatumHashPairs,
    C.Checker (..),
    C.CheckerError (..),
    C.CheckerPos (..),
    C.CheckerErrorType (..),
    C.basicError,
    C.checkAt,
    C.checkFoldable,
    C.checkIf,
    C.checkIfWith,
    C.checkBool,
    C.checkWith,
    C.checkByteString,
    C.checkPositiveValue,
    C.checkTxId,
    C.handleErrors,
    C.checkSignatures,
    C.checkZeroSum,
    C.checkInputs,
    C.checkReferenceInputs,
    C.checkFail,
    C.checkMints,
    C.checkFee,
    C.checkOutputs,
    C.checkDatumPairs,
    C.checkPhase1,
    C.renderErrors,
    C.flattenValue,
) where

import Plutarch.Context.Base qualified as B
import Plutarch.Context.Check qualified as C
import Plutarch.Context.Minting qualified as M
import Plutarch.Context.Spending qualified as S
import Plutarch.Context.SubBuilder qualified as Sub
import Plutarch.Context.TxInfo qualified as T
