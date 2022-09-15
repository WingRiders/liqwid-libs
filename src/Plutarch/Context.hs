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
  B.address,
  B.input,
  B.referenceInput,
  B.credential,
  B.pubKey,
  B.script,
  B.withStakingCredential,
  B.withRefTxId,
  B.withDatum,
  B.withInlineDatum,
  B.withReferenceScript,
  B.withValue,
  B.withRefIndex,
  B.withRef,
  B.withRedeemer,
  B.signedWith,
  B.mint,
  B.mintWith,
  B.mintSingletonWith,
  B.extraData,
  B.extraRedeemer,
  B.txId,
  B.fee,
  B.unpack,
  B.timeRange,
  B.mkOutRefIndices,
  B.normalizePair,
  B.normalizeMap,
  B.normalizeValue,
  B.normalizeUTXO,
  B.normalizeMint,
  B.sortMap,
  B.mkNormalized,
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
  C.checkNormalized,  
  C.renderErrors,
  C.flattenValue,
  C.checkValidatorRedeemer,
  C.checkValueNormalized,
) where

import Plutarch.Context.Base qualified as B
import Plutarch.Context.Check qualified as C
import Plutarch.Context.Minting qualified as M
import Plutarch.Context.Spending qualified as S
import Plutarch.Context.SubBuilder qualified as Sub
import Plutarch.Context.TxInfo qualified as T
