import { ComplexityEstimator } from 'graphql-query-complexity'
import { Asset } from './graphql_types'

export type AssetWithoutTokens = Omit<Asset, 'tokenMints' | 'tokenMints_aggregate'>

type ComplexityExtension = {
  extensions: {
    complexity: number | ComplexityEstimator;
  };
};

type ComplexityMapping = { [key: string]: ComplexityExtension };

export type FieldsComplexityMapping = {
  [key: string]:
    | FieldsComplexityMapping
    | ComplexityMapping
    | ComplexityExtension;
};
