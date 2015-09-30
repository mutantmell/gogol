{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ComputeAutoscaler.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ComputeAutoscaler.Types.Product where

import           Network.Google.ComputeAutoscaler.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'deprecationStatus' smart constructor.
data DeprecationStatus = DeprecationStatus
    { _dsState       :: !(Maybe Text)
    , _dsDeleted     :: !(Maybe Text)
    , _dsReplacement :: !(Maybe Text)
    , _dsObsolete    :: !(Maybe Text)
    , _dsDeprecated  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeprecationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsState'
--
-- * 'dsDeleted'
--
-- * 'dsReplacement'
--
-- * 'dsObsolete'
--
-- * 'dsDeprecated'
deprecationStatus
    :: DeprecationStatus
deprecationStatus =
    DeprecationStatus
    { _dsState = Nothing
    , _dsDeleted = Nothing
    , _dsReplacement = Nothing
    , _dsObsolete = Nothing
    , _dsDeprecated = Nothing
    }

dsState :: Lens' DeprecationStatus (Maybe Text)
dsState = lens _dsState (\ s a -> s{_dsState = a})

dsDeleted :: Lens' DeprecationStatus (Maybe Text)
dsDeleted
  = lens _dsDeleted (\ s a -> s{_dsDeleted = a})

dsReplacement :: Lens' DeprecationStatus (Maybe Text)
dsReplacement
  = lens _dsReplacement
      (\ s a -> s{_dsReplacement = a})

dsObsolete :: Lens' DeprecationStatus (Maybe Text)
dsObsolete
  = lens _dsObsolete (\ s a -> s{_dsObsolete = a})

dsDeprecated :: Lens' DeprecationStatus (Maybe Text)
dsDeprecated
  = lens _dsDeprecated (\ s a -> s{_dsDeprecated = a})

instance FromJSON DeprecationStatus where
        parseJSON
          = withObject "DeprecationStatus"
              (\ o ->
                 DeprecationStatus <$>
                   (o .:? "state") <*> (o .:? "deleted") <*>
                     (o .:? "replacement")
                     <*> (o .:? "obsolete")
                     <*> (o .:? "deprecated"))

instance ToJSON DeprecationStatus where
        toJSON DeprecationStatus{..}
          = object
              (catMaybes
                 [("state" .=) <$> _dsState,
                  ("deleted" .=) <$> _dsDeleted,
                  ("replacement" .=) <$> _dsReplacement,
                  ("obsolete" .=) <$> _dsObsolete,
                  ("deprecated" .=) <$> _dsDeprecated])

--
-- /See:/ 'operationList' smart constructor.
data OperationList = OperationList
    { _olNextPageToken :: !(Maybe Text)
    , _olKind          :: !Text
    , _olItems         :: !(Maybe [Maybe Operation])
    , _olSelfLink      :: !(Maybe Text)
    , _olId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olNextPageToken'
--
-- * 'olKind'
--
-- * 'olItems'
--
-- * 'olSelfLink'
--
-- * 'olId'
operationList
    :: OperationList
operationList =
    OperationList
    { _olNextPageToken = Nothing
    , _olKind = "autoscaler#operationList"
    , _olItems = Nothing
    , _olSelfLink = Nothing
    , _olId = Nothing
    }

olNextPageToken :: Lens' OperationList (Maybe Text)
olNextPageToken
  = lens _olNextPageToken
      (\ s a -> s{_olNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#operations for Operations
-- resource.
olKind :: Lens' OperationList Text
olKind = lens _olKind (\ s a -> s{_olKind = a})

olItems :: Lens' OperationList [Maybe Operation]
olItems
  = lens _olItems (\ s a -> s{_olItems = a}) . _Default
      . _Coerce

olSelfLink :: Lens' OperationList (Maybe Text)
olSelfLink
  = lens _olSelfLink (\ s a -> s{_olSelfLink = a})

olId :: Lens' OperationList (Maybe Text)
olId = lens _olId (\ s a -> s{_olId = a})

instance FromJSON OperationList where
        parseJSON
          = withObject "OperationList"
              (\ o ->
                 OperationList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "autoscaler#operationList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON OperationList where
        toJSON OperationList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olNextPageToken,
                  Just ("kind" .= _olKind), ("items" .=) <$> _olItems,
                  ("selfLink" .=) <$> _olSelfLink,
                  ("id" .=) <$> _olId])

-- | Custom utilization metric policy.
--
-- /See:/ 'autoscalingPolicyCustomMetricUtilization' smart constructor.
data AutoscalingPolicyCustomMetricUtilization = AutoscalingPolicyCustomMetricUtilization
    { _apcmuUtilizationTarget     :: !(Maybe Double)
    , _apcmuMetric                :: !(Maybe Text)
    , _apcmuUtilizationTargetType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyCustomMetricUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcmuUtilizationTarget'
--
-- * 'apcmuMetric'
--
-- * 'apcmuUtilizationTargetType'
autoscalingPolicyCustomMetricUtilization
    :: AutoscalingPolicyCustomMetricUtilization
autoscalingPolicyCustomMetricUtilization =
    AutoscalingPolicyCustomMetricUtilization
    { _apcmuUtilizationTarget = Nothing
    , _apcmuMetric = Nothing
    , _apcmuUtilizationTargetType = Nothing
    }

-- | Target value of the metric which Autoscaler should maintain. Must be a
-- positive value.
apcmuUtilizationTarget :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Double)
apcmuUtilizationTarget
  = lens _apcmuUtilizationTarget
      (\ s a -> s{_apcmuUtilizationTarget = a})

-- | Identifier of the metric. It should be a Cloud Monitoring metric. The
-- metric can not have negative values. The metric should be an utilization
-- metric (increasing number of VMs handling requests x times should reduce
-- average value of the metric roughly x times). For example you could use:
-- compute.googleapis.com\/instance\/network\/received_bytes_count.
apcmuMetric :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Text)
apcmuMetric
  = lens _apcmuMetric (\ s a -> s{_apcmuMetric = a})

-- | Defines type in which utilization_target is expressed.
apcmuUtilizationTargetType :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Text)
apcmuUtilizationTargetType
  = lens _apcmuUtilizationTargetType
      (\ s a -> s{_apcmuUtilizationTargetType = a})

instance FromJSON
         AutoscalingPolicyCustomMetricUtilization where
        parseJSON
          = withObject
              "AutoscalingPolicyCustomMetricUtilization"
              (\ o ->
                 AutoscalingPolicyCustomMetricUtilization <$>
                   (o .:? "utilizationTarget") <*> (o .:? "metric") <*>
                     (o .:? "utilizationTargetType"))

instance ToJSON
         AutoscalingPolicyCustomMetricUtilization where
        toJSON AutoscalingPolicyCustomMetricUtilization{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _apcmuUtilizationTarget,
                  ("metric" .=) <$> _apcmuMetric,
                  ("utilizationTargetType" .=) <$>
                    _apcmuUtilizationTargetType])

-- | Load balancing utilization policy.
--
-- /See:/ 'autoscalingPolicyLoadBalancingUtilization' smart constructor.
newtype AutoscalingPolicyLoadBalancingUtilization = AutoscalingPolicyLoadBalancingUtilization
    { _aplbuUtilizationTarget :: Maybe Double
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyLoadBalancingUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplbuUtilizationTarget'
autoscalingPolicyLoadBalancingUtilization
    :: AutoscalingPolicyLoadBalancingUtilization
autoscalingPolicyLoadBalancingUtilization =
    AutoscalingPolicyLoadBalancingUtilization
    { _aplbuUtilizationTarget = Nothing
    }

-- | Fraction of backend capacity utilization (set in HTTP load balancing
-- configuration) that Autoscaler should maintain. Must be a positive float
-- value. If not defined, the default is 0.8. For example if your
-- maxRatePerInstance capacity (in HTTP Load Balancing configuration) is
-- set at 10 and you would like to keep number of instances such that each
-- instance receives 7 QPS on average, set this to 0.7.
aplbuUtilizationTarget :: Lens' AutoscalingPolicyLoadBalancingUtilization (Maybe Double)
aplbuUtilizationTarget
  = lens _aplbuUtilizationTarget
      (\ s a -> s{_aplbuUtilizationTarget = a})

instance FromJSON
         AutoscalingPolicyLoadBalancingUtilization where
        parseJSON
          = withObject
              "AutoscalingPolicyLoadBalancingUtilization"
              (\ o ->
                 AutoscalingPolicyLoadBalancingUtilization <$>
                   (o .:? "utilizationTarget"))

instance ToJSON
         AutoscalingPolicyLoadBalancingUtilization where
        toJSON AutoscalingPolicyLoadBalancingUtilization{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _aplbuUtilizationTarget])

--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oTargetId            :: !(Maybe Word64)
    , _oStatus              :: !(Maybe Text)
    , _oInsertTime          :: !(Maybe Text)
    , _oProgress            :: !(Maybe Int32)
    , _oStartTime           :: !(Maybe Text)
    , _oKind                :: !Text
    , _oError               :: !(Maybe OperationError)
    , _oHttpErrorMessage    :: !(Maybe Text)
    , _oZone                :: !(Maybe Text)
    , _oWarnings            :: !(Maybe [OperationWarningsItem])
    , _oHttpErrorStatusCode :: !(Maybe Int32)
    , _oUser                :: !(Maybe Text)
    , _oSelfLink            :: !(Maybe Text)
    , _oName                :: !(Maybe Text)
    , _oStatusMessage       :: !(Maybe Text)
    , _oCreationTimestamp   :: !(Maybe Text)
    , _oEndTime             :: !(Maybe Text)
    , _oId                  :: !(Maybe Word64)
    , _oOperationType       :: !(Maybe Text)
    , _oRegion              :: !(Maybe Text)
    , _oTargetLink          :: !(Maybe Text)
    , _oClientOperationId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oTargetId'
--
-- * 'oStatus'
--
-- * 'oInsertTime'
--
-- * 'oProgress'
--
-- * 'oStartTime'
--
-- * 'oKind'
--
-- * 'oError'
--
-- * 'oHttpErrorMessage'
--
-- * 'oZone'
--
-- * 'oWarnings'
--
-- * 'oHttpErrorStatusCode'
--
-- * 'oUser'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oStatusMessage'
--
-- * 'oCreationTimestamp'
--
-- * 'oEndTime'
--
-- * 'oId'
--
-- * 'oOperationType'
--
-- * 'oRegion'
--
-- * 'oTargetLink'
--
-- * 'oClientOperationId'
operation
    :: Operation
operation =
    Operation
    { _oTargetId = Nothing
    , _oStatus = Nothing
    , _oInsertTime = Nothing
    , _oProgress = Nothing
    , _oStartTime = Nothing
    , _oKind = "autoscaler#operation"
    , _oError = Nothing
    , _oHttpErrorMessage = Nothing
    , _oZone = Nothing
    , _oWarnings = Nothing
    , _oHttpErrorStatusCode = Nothing
    , _oUser = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oStatusMessage = Nothing
    , _oCreationTimestamp = Nothing
    , _oEndTime = Nothing
    , _oId = Nothing
    , _oOperationType = Nothing
    , _oRegion = Nothing
    , _oTargetLink = Nothing
    , _oClientOperationId = Nothing
    }

oTargetId :: Lens' Operation (Maybe Word64)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a})

oStatus :: Lens' Operation (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

oInsertTime :: Lens' Operation (Maybe Text)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a})

oProgress :: Lens' Operation (Maybe Int32)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a})

oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | [Output Only] Type of the resource. Always compute#Operation for
-- Operation resources.
oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

oError :: Lens' Operation (Maybe OperationError)
oError = lens _oError (\ s a -> s{_oError = a})

oHttpErrorMessage :: Lens' Operation (Maybe Text)
oHttpErrorMessage
  = lens _oHttpErrorMessage
      (\ s a -> s{_oHttpErrorMessage = a})

oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

oWarnings :: Lens' Operation [OperationWarningsItem]
oWarnings
  = lens _oWarnings (\ s a -> s{_oWarnings = a}) .
      _Default
      . _Coerce

oHttpErrorStatusCode :: Lens' Operation (Maybe Int32)
oHttpErrorStatusCode
  = lens _oHttpErrorStatusCode
      (\ s a -> s{_oHttpErrorStatusCode = a})

oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

oStatusMessage :: Lens' Operation (Maybe Text)
oStatusMessage
  = lens _oStatusMessage
      (\ s a -> s{_oStatusMessage = a})

oCreationTimestamp :: Lens' Operation (Maybe Text)
oCreationTimestamp
  = lens _oCreationTimestamp
      (\ s a -> s{_oCreationTimestamp = a})

oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

oId :: Lens' Operation (Maybe Word64)
oId = lens _oId (\ s a -> s{_oId = a})

oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

oRegion :: Lens' Operation (Maybe Text)
oRegion = lens _oRegion (\ s a -> s{_oRegion = a})

oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

oClientOperationId :: Lens' Operation (Maybe Text)
oClientOperationId
  = lens _oClientOperationId
      (\ s a -> s{_oClientOperationId = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation <$>
                   (o .:? "targetId") <*> (o .:? "status") <*>
                     (o .:? "insertTime")
                     <*> (o .:? "progress")
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind" .!= "autoscaler#operation")
                     <*> (o .:? "error")
                     <*> (o .:? "httpErrorMessage")
                     <*> (o .:? "zone")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "httpErrorStatusCode")
                     <*> (o .:? "user")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "endTime")
                     <*> (o .:? "id")
                     <*> (o .:? "operationType")
                     <*> (o .:? "region")
                     <*> (o .:? "targetLink")
                     <*> (o .:? "clientOperationId"))

instance ToJSON Operation where
        toJSON Operation{..}
          = object
              (catMaybes
                 [("targetId" .=) <$> _oTargetId,
                  ("status" .=) <$> _oStatus,
                  ("insertTime" .=) <$> _oInsertTime,
                  ("progress" .=) <$> _oProgress,
                  ("startTime" .=) <$> _oStartTime,
                  Just ("kind" .= _oKind), ("error" .=) <$> _oError,
                  ("httpErrorMessage" .=) <$> _oHttpErrorMessage,
                  ("zone" .=) <$> _oZone,
                  ("warnings" .=) <$> _oWarnings,
                  ("httpErrorStatusCode" .=) <$> _oHttpErrorStatusCode,
                  ("user" .=) <$> _oUser,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName,
                  ("statusMessage" .=) <$> _oStatusMessage,
                  ("creationTimestamp" .=) <$> _oCreationTimestamp,
                  ("endTime" .=) <$> _oEndTime, ("id" .=) <$> _oId,
                  ("operationType" .=) <$> _oOperationType,
                  ("region" .=) <$> _oRegion,
                  ("targetLink" .=) <$> _oTargetLink,
                  ("clientOperationId" .=) <$> _oClientOperationId])

--
-- /See:/ 'zone' smart constructor.
data Zone = Zone
    { _zStatus             :: !(Maybe Text)
    , _zMaintenanceWindows :: !(Maybe [ZoneMaintenanceWindowsItem])
    , _zKind               :: !Text
    , _zSelfLink           :: !(Maybe Text)
    , _zName               :: !(Maybe Text)
    , _zCreationTimestamp  :: !(Maybe Text)
    , _zId                 :: !(Maybe Word64)
    , _zRegion             :: !(Maybe Text)
    , _zDescription        :: !(Maybe Text)
    , _zDeprecated         :: !(Maybe (Maybe DeprecationStatus))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Zone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zStatus'
--
-- * 'zMaintenanceWindows'
--
-- * 'zKind'
--
-- * 'zSelfLink'
--
-- * 'zName'
--
-- * 'zCreationTimestamp'
--
-- * 'zId'
--
-- * 'zRegion'
--
-- * 'zDescription'
--
-- * 'zDeprecated'
zone
    :: Zone
zone =
    Zone
    { _zStatus = Nothing
    , _zMaintenanceWindows = Nothing
    , _zKind = "autoscaler#zone"
    , _zSelfLink = Nothing
    , _zName = Nothing
    , _zCreationTimestamp = Nothing
    , _zId = Nothing
    , _zRegion = Nothing
    , _zDescription = Nothing
    , _zDeprecated = Nothing
    }

zStatus :: Lens' Zone (Maybe Text)
zStatus = lens _zStatus (\ s a -> s{_zStatus = a})

zMaintenanceWindows :: Lens' Zone [ZoneMaintenanceWindowsItem]
zMaintenanceWindows
  = lens _zMaintenanceWindows
      (\ s a -> s{_zMaintenanceWindows = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always kind#zone for zones.
zKind :: Lens' Zone Text
zKind = lens _zKind (\ s a -> s{_zKind = a})

-- | [Output Only] Server defined URL for the resource.
zSelfLink :: Lens' Zone (Maybe Text)
zSelfLink
  = lens _zSelfLink (\ s a -> s{_zSelfLink = a})

zName :: Lens' Zone (Maybe Text)
zName = lens _zName (\ s a -> s{_zName = a})

zCreationTimestamp :: Lens' Zone (Maybe Text)
zCreationTimestamp
  = lens _zCreationTimestamp
      (\ s a -> s{_zCreationTimestamp = a})

zId :: Lens' Zone (Maybe Word64)
zId = lens _zId (\ s a -> s{_zId = a})

zRegion :: Lens' Zone (Maybe Text)
zRegion = lens _zRegion (\ s a -> s{_zRegion = a})

zDescription :: Lens' Zone (Maybe Text)
zDescription
  = lens _zDescription (\ s a -> s{_zDescription = a})

zDeprecated :: Lens' Zone (Maybe (Maybe DeprecationStatus))
zDeprecated
  = lens _zDeprecated (\ s a -> s{_zDeprecated = a})

instance FromJSON Zone where
        parseJSON
          = withObject "Zone"
              (\ o ->
                 Zone <$>
                   (o .:? "status") <*>
                     (o .:? "maintenanceWindows" .!= mempty)
                     <*> (o .:? "kind" .!= "autoscaler#zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "deprecated"))

instance ToJSON Zone where
        toJSON Zone{..}
          = object
              (catMaybes
                 [("status" .=) <$> _zStatus,
                  ("maintenanceWindows" .=) <$> _zMaintenanceWindows,
                  Just ("kind" .= _zKind),
                  ("selfLink" .=) <$> _zSelfLink,
                  ("name" .=) <$> _zName,
                  ("creationTimestamp" .=) <$> _zCreationTimestamp,
                  ("id" .=) <$> _zId, ("region" .=) <$> _zRegion,
                  ("description" .=) <$> _zDescription,
                  ("deprecated" .=) <$> _zDeprecated])

--
-- /See:/ 'autoscalerListResponse' smart constructor.
data AutoscalerListResponse = AutoscalerListResponse
    { _alrNextPageToken :: !(Maybe Text)
    , _alrKind          :: !Text
    , _alrItems         :: !(Maybe [Maybe Autoscaler])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrNextPageToken'
--
-- * 'alrKind'
--
-- * 'alrItems'
autoscalerListResponse
    :: AutoscalerListResponse
autoscalerListResponse =
    AutoscalerListResponse
    { _alrNextPageToken = Nothing
    , _alrKind = "compute#autoscalerList"
    , _alrItems = Nothing
    }

-- | [Output only] A token used to continue a truncated list request.
alrNextPageToken :: Lens' AutoscalerListResponse (Maybe Text)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

-- | Type of resource.
alrKind :: Lens' AutoscalerListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

-- | Autoscaler resources.
alrItems :: Lens' AutoscalerListResponse [Maybe Autoscaler]
alrItems
  = lens _alrItems (\ s a -> s{_alrItems = a}) .
      _Default
      . _Coerce

instance FromJSON AutoscalerListResponse where
        parseJSON
          = withObject "AutoscalerListResponse"
              (\ o ->
                 AutoscalerListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#autoscalerList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AutoscalerListResponse where
        toJSON AutoscalerListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alrNextPageToken,
                  Just ("kind" .= _alrKind),
                  ("items" .=) <$> _alrItems])

--
-- /See:/ 'zoneList' smart constructor.
data ZoneList = ZoneList
    { _zlNextPageToken :: !(Maybe Text)
    , _zlKind          :: !Text
    , _zlItems         :: !(Maybe [Maybe Zone])
    , _zlSelfLink      :: !(Maybe Text)
    , _zlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlNextPageToken'
--
-- * 'zlKind'
--
-- * 'zlItems'
--
-- * 'zlSelfLink'
--
-- * 'zlId'
zoneList
    :: ZoneList
zoneList =
    ZoneList
    { _zlNextPageToken = Nothing
    , _zlKind = "autoscaler#zoneList"
    , _zlItems = Nothing
    , _zlSelfLink = Nothing
    , _zlId = Nothing
    }

zlNextPageToken :: Lens' ZoneList (Maybe Text)
zlNextPageToken
  = lens _zlNextPageToken
      (\ s a -> s{_zlNextPageToken = a})

-- | Type of resource.
zlKind :: Lens' ZoneList Text
zlKind = lens _zlKind (\ s a -> s{_zlKind = a})

zlItems :: Lens' ZoneList [Maybe Zone]
zlItems
  = lens _zlItems (\ s a -> s{_zlItems = a}) . _Default
      . _Coerce

-- | Server defined URL for this resource (output only).
zlSelfLink :: Lens' ZoneList (Maybe Text)
zlSelfLink
  = lens _zlSelfLink (\ s a -> s{_zlSelfLink = a})

zlId :: Lens' ZoneList (Maybe Text)
zlId = lens _zlId (\ s a -> s{_zlId = a})

instance FromJSON ZoneList where
        parseJSON
          = withObject "ZoneList"
              (\ o ->
                 ZoneList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "autoscaler#zoneList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ZoneList where
        toJSON ZoneList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _zlNextPageToken,
                  Just ("kind" .= _zlKind), ("items" .=) <$> _zlItems,
                  ("selfLink" .=) <$> _zlSelfLink,
                  ("id" .=) <$> _zlId])

-- | Cloud Autoscaler policy.
--
-- /See:/ 'autoscalingPolicy' smart constructor.
data AutoscalingPolicy = AutoscalingPolicy
    { _apCustomMetricUtilizations :: !(Maybe [Maybe AutoscalingPolicyCustomMetricUtilization])
    , _apMaxNumReplicas           :: !(Maybe Int32)
    , _apCpuUtilization           :: !(Maybe (Maybe AutoscalingPolicyCPUUtilization))
    , _apLoadBalancingUtilization :: !(Maybe (Maybe AutoscalingPolicyLoadBalancingUtilization))
    , _apMinNumReplicas           :: !(Maybe Int32)
    , _apCoolDownPeriodSec        :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apCustomMetricUtilizations'
--
-- * 'apMaxNumReplicas'
--
-- * 'apCpuUtilization'
--
-- * 'apLoadBalancingUtilization'
--
-- * 'apMinNumReplicas'
--
-- * 'apCoolDownPeriodSec'
autoscalingPolicy
    :: AutoscalingPolicy
autoscalingPolicy =
    AutoscalingPolicy
    { _apCustomMetricUtilizations = Nothing
    , _apMaxNumReplicas = Nothing
    , _apCpuUtilization = Nothing
    , _apLoadBalancingUtilization = Nothing
    , _apMinNumReplicas = Nothing
    , _apCoolDownPeriodSec = Nothing
    }

-- | Configuration parameters of autoscaling based on custom metric.
apCustomMetricUtilizations :: Lens' AutoscalingPolicy [Maybe AutoscalingPolicyCustomMetricUtilization]
apCustomMetricUtilizations
  = lens _apCustomMetricUtilizations
      (\ s a -> s{_apCustomMetricUtilizations = a})
      . _Default
      . _Coerce

-- | The maximum number of replicas that the Autoscaler can scale up to.
apMaxNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMaxNumReplicas
  = lens _apMaxNumReplicas
      (\ s a -> s{_apMaxNumReplicas = a})

-- | Exactly one utilization policy should be provided. Configuration
-- parameters of CPU based autoscaling policy.
apCpuUtilization :: Lens' AutoscalingPolicy (Maybe (Maybe AutoscalingPolicyCPUUtilization))
apCpuUtilization
  = lens _apCpuUtilization
      (\ s a -> s{_apCpuUtilization = a})

-- | Configuration parameters of autoscaling based on load balancer.
apLoadBalancingUtilization :: Lens' AutoscalingPolicy (Maybe (Maybe AutoscalingPolicyLoadBalancingUtilization))
apLoadBalancingUtilization
  = lens _apLoadBalancingUtilization
      (\ s a -> s{_apLoadBalancingUtilization = a})

-- | The minimum number of replicas that the Autoscaler can scale down to.
apMinNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMinNumReplicas
  = lens _apMinNumReplicas
      (\ s a -> s{_apMinNumReplicas = a})

-- | The number of seconds that the Autoscaler should wait between two
-- succeeding changes to the number of virtual machines. You should define
-- an interval that is at least as long as the initialization time of a
-- virtual machine and the time it may take for replica pool to create the
-- virtual machine. The default is 60 seconds.
apCoolDownPeriodSec :: Lens' AutoscalingPolicy (Maybe Int32)
apCoolDownPeriodSec
  = lens _apCoolDownPeriodSec
      (\ s a -> s{_apCoolDownPeriodSec = a})

instance FromJSON AutoscalingPolicy where
        parseJSON
          = withObject "AutoscalingPolicy"
              (\ o ->
                 AutoscalingPolicy <$>
                   (o .:? "customMetricUtilizations" .!= mempty) <*>
                     (o .:? "maxNumReplicas")
                     <*> (o .:? "cpuUtilization")
                     <*> (o .:? "loadBalancingUtilization")
                     <*> (o .:? "minNumReplicas")
                     <*> (o .:? "coolDownPeriodSec"))

instance ToJSON AutoscalingPolicy where
        toJSON AutoscalingPolicy{..}
          = object
              (catMaybes
                 [("customMetricUtilizations" .=) <$>
                    _apCustomMetricUtilizations,
                  ("maxNumReplicas" .=) <$> _apMaxNumReplicas,
                  ("cpuUtilization" .=) <$> _apCpuUtilization,
                  ("loadBalancingUtilization" .=) <$>
                    _apLoadBalancingUtilization,
                  ("minNumReplicas" .=) <$> _apMinNumReplicas,
                  ("coolDownPeriodSec" .=) <$> _apCoolDownPeriodSec])

-- | Cloud Autoscaler resource.
--
-- /See:/ 'autoscaler' smart constructor.
data Autoscaler = Autoscaler
    { _aKind              :: !Text
    , _aSelfLink          :: !(Maybe Text)
    , _aName              :: !(Maybe Text)
    , _aCreationTimestamp :: !(Maybe Text)
    , _aAutoscalingPolicy :: !(Maybe (Maybe AutoscalingPolicy))
    , _aId                :: !(Maybe Word64)
    , _aDescription       :: !(Maybe Text)
    , _aTarget            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Autoscaler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKind'
--
-- * 'aSelfLink'
--
-- * 'aName'
--
-- * 'aCreationTimestamp'
--
-- * 'aAutoscalingPolicy'
--
-- * 'aId'
--
-- * 'aDescription'
--
-- * 'aTarget'
autoscaler
    :: Autoscaler
autoscaler =
    Autoscaler
    { _aKind = "compute#autoscaler"
    , _aSelfLink = Nothing
    , _aName = Nothing
    , _aCreationTimestamp = Nothing
    , _aAutoscalingPolicy = Nothing
    , _aId = Nothing
    , _aDescription = Nothing
    , _aTarget = Nothing
    }

-- | Type of resource.
aKind :: Lens' Autoscaler Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | [Output Only] A self-link to the Autoscaler configuration resource.
aSelfLink :: Lens' Autoscaler (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

-- | Name of the Autoscaler resource. Must be unique per project and zone.
aName :: Lens' Autoscaler (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
aCreationTimestamp :: Lens' Autoscaler (Maybe Text)
aCreationTimestamp
  = lens _aCreationTimestamp
      (\ s a -> s{_aCreationTimestamp = a})

-- | Configuration parameters for autoscaling algorithm.
aAutoscalingPolicy :: Lens' Autoscaler (Maybe (Maybe AutoscalingPolicy))
aAutoscalingPolicy
  = lens _aAutoscalingPolicy
      (\ s a -> s{_aAutoscalingPolicy = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
aId :: Lens' Autoscaler (Maybe Word64)
aId = lens _aId (\ s a -> s{_aId = a})

-- | An optional textual description of the resource provided by the client.
aDescription :: Lens' Autoscaler (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

-- | URL to the entity which will be autoscaled. Currently the only supported
-- value is ReplicaPool?s URL. Note: it is illegal to specify multiple
-- Autoscalers for the same target.
aTarget :: Lens' Autoscaler (Maybe Text)
aTarget = lens _aTarget (\ s a -> s{_aTarget = a})

instance FromJSON Autoscaler where
        parseJSON
          = withObject "Autoscaler"
              (\ o ->
                 Autoscaler <$>
                   (o .:? "kind" .!= "compute#autoscaler") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "autoscalingPolicy")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "target"))

instance ToJSON Autoscaler where
        toJSON Autoscaler{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aKind),
                  ("selfLink" .=) <$> _aSelfLink,
                  ("name" .=) <$> _aName,
                  ("creationTimestamp" .=) <$> _aCreationTimestamp,
                  ("autoscalingPolicy" .=) <$> _aAutoscalingPolicy,
                  ("id" .=) <$> _aId,
                  ("description" .=) <$> _aDescription,
                  ("target" .=) <$> _aTarget])

-- | CPU utilization policy.
--
-- /See:/ 'autoscalingPolicyCPUUtilization' smart constructor.
newtype AutoscalingPolicyCPUUtilization = AutoscalingPolicyCPUUtilization
    { _apcuUtilizationTarget :: Maybe Double
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyCPUUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcuUtilizationTarget'
autoscalingPolicyCPUUtilization
    :: AutoscalingPolicyCPUUtilization
autoscalingPolicyCPUUtilization =
    AutoscalingPolicyCPUUtilization
    { _apcuUtilizationTarget = Nothing
    }

-- | The target utilization that the Autoscaler should maintain. It is
-- represented as a fraction of used cores. For example: 6 cores used in
-- 8-core VM are represented here as 0.75. Must be a float value between
-- (0, 1]. If not defined, the default is 0.8.
apcuUtilizationTarget :: Lens' AutoscalingPolicyCPUUtilization (Maybe Double)
apcuUtilizationTarget
  = lens _apcuUtilizationTarget
      (\ s a -> s{_apcuUtilizationTarget = a})

instance FromJSON AutoscalingPolicyCPUUtilization
         where
        parseJSON
          = withObject "AutoscalingPolicyCPUUtilization"
              (\ o ->
                 AutoscalingPolicyCPUUtilization <$>
                   (o .:? "utilizationTarget"))

instance ToJSON AutoscalingPolicyCPUUtilization where
        toJSON AutoscalingPolicyCPUUtilization{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _apcuUtilizationTarget])