{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickSearch.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickSearch.Types
    (
    -- * Service Configuration
      doubleClickSearch

    -- * OAuth Scopes
    , doubleclicksearchScope

    -- * ReportRow
    , ReportRow
    , reportRow
    , rrAddtional

    -- * ReportRequest
    , ReportRequest
    , reportRequest
    , rrMaxRowsPerFile
    , rrReportScope
    , rrStatisticsCurrency
    , rrTimeRange
    , rrOrderBy
    , rrFilters
    , rrIncludeRemovedEntities
    , rrIncludeDeletedEntities
    , rrDownloadFormat
    , rrStartRow
    , rrColumns
    , rrReportType
    , rrVerifySingleTimeZone
    , rrRowCount

    -- * ReportRequestOrderByItem
    , ReportRequestOrderByItem
    , reportRequestOrderByItem
    , rrobiSortOrder
    , rrobiColumn

    -- * Report
    , Report
    , report
    , rKind
    , rRows
    , rStatisticsCurrencyCode
    , rIsReportReady
    , rFiles
    , rId
    , rStatisticsTimeZone
    , rRowCount
    , rRequest

    -- * ReportFilesItem
    , ReportFilesItem
    , reportFilesItem
    , rfiURL
    , rfiByteCount

    -- * ReportRequestFiltersItem
    , ReportRequestFiltersItem
    , reportRequestFiltersItem
    , rrfiOperator
    , rrfiValues
    , rrfiColumn

    -- * Availability
    , Availability
    , availability
    , aAgencyId
    , aAdvertiserId
    , aSegmentationId
    , aSegmentationName
    , aAvailabilityTimestamp
    , aSegmentationType

    -- * UpdateAvailabilityRequest
    , UpdateAvailabilityRequest
    , updateAvailabilityRequest
    , uarAvailabilities

    -- * CustomMetric
    , CustomMetric
    , customMetric
    , cmValue
    , cmName

    -- * ConversionList
    , ConversionList
    , conversionList
    , clKind
    , clConversion

    -- * ReportAPIColumnSpec
    , ReportAPIColumnSpec
    , reportAPIColumnSpec
    , racsCustomDimensionName
    , racsSavedColumnName
    , racsGroupByColumn
    , racsCustomMetricName
    , racsEndDate
    , racsStartDate
    , racsHeaderText
    , racsPlatformSource
    , racsColumnName

    -- * ReportRequestTimeRange
    , ReportRequestTimeRange
    , reportRequestTimeRange
    , rrtrEndDate
    , rrtrChangedAttributesSinceTimestamp
    , rrtrStartDate
    , rrtrChangedMetricsSinceTimestamp

    -- * Conversion
    , Conversion
    , conversion
    , cAdGroupId
    , cConversionModifiedTimestamp
    , cState
    , cEngineAccountId
    , cAgencyId
    , cCurrencyCode
    , cStoreId
    , cDsConversionId
    , cConversionId
    , cAdvertiserId
    , cSegmentationId
    , cChannel
    , cProductCountry
    , cCampaignId
    , cCriterionId
    , cConversionTimestamp
    , cAttributionModel
    , cSegmentationName
    , cProductLanguage
    , cCustomMetric
    , cCountMillis
    , cQuantityMillis
    , cAdId
    , cDeviceType
    , cType
    , cCustomDimension
    , cFloodlightOrderId
    , cRevenueMicros
    , cClickId
    , cInventoryAccountId
    , cSegmentationType
    , cProductId
    , cProductGroupId

    -- * SavedColumn
    , SavedColumn
    , savedColumn
    , scSavedColumnName
    , scKind
    , scType

    -- * CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdName

    -- * UpdateAvailabilityResponse
    , UpdateAvailabilityResponse
    , updateAvailabilityResponse
    , uAvailabilities

    -- * ReportRequestReportScope
    , ReportRequestReportScope
    , reportRequestReportScope
    , rrrsKeywordId
    , rrrsAdGroupId
    , rrrsEngineAccountId
    , rrrsAgencyId
    , rrrsAdvertiserId
    , rrrsCampaignId
    , rrrsAdId

    -- * SavedColumnList
    , SavedColumnList
    , savedColumnList
    , sclKind
    , sclItems
    ) where

import           Network.Google.DoubleClickSearch.Types.Product
import           Network.Google.DoubleClickSearch.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the DoubleClick Search API. This contains the host and root path used as a starting point for constructing service requests.
doubleClickSearch :: Service
doubleClickSearch
  = defaultService (ServiceId "doubleclicksearch:v2")
      "www.googleapis.com"
      "doubleclicksearch/v2/"

-- | View and manage your advertising data in DoubleClick Search
doubleclicksearchScope :: OAuthScope
doubleclicksearchScope = "https://www.googleapis.com/auth/doubleclicksearch";
