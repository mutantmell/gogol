{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsInsert@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert
    (
    -- * REST Resource
      AdvertiserGroupsInsertResource

    -- * Creating a Request
    , advertiserGroupsInsert'
    , AdvertiserGroupsInsert'

    -- * Request Lenses
    , agiProFileId
    , agiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsInsert@ method which the
-- 'AdvertiserGroupsInsert'' request conforms to.
type AdvertiserGroupsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] AdvertiserGroup :>
               Post '[JSON] AdvertiserGroup

-- | Inserts a new advertiser group.
--
-- /See:/ 'advertiserGroupsInsert'' smart constructor.
data AdvertiserGroupsInsert' = AdvertiserGroupsInsert'
    { _agiProFileId :: !Int64
    , _agiPayload   :: !AdvertiserGroup
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agiProFileId'
--
-- * 'agiPayload'
advertiserGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> AdvertiserGroup -- ^ 'payload'
    -> AdvertiserGroupsInsert'
advertiserGroupsInsert' pAgiProFileId_ pAgiPayload_ =
    AdvertiserGroupsInsert'
    { _agiProFileId = pAgiProFileId_
    , _agiPayload = pAgiPayload_
    }

-- | User profile ID associated with this request.
agiProFileId :: Lens' AdvertiserGroupsInsert' Int64
agiProFileId
  = lens _agiProFileId (\ s a -> s{_agiProFileId = a})

-- | Multipart request metadata.
agiPayload :: Lens' AdvertiserGroupsInsert' AdvertiserGroup
agiPayload
  = lens _agiPayload (\ s a -> s{_agiPayload = a})

instance GoogleRequest AdvertiserGroupsInsert' where
        type Rs AdvertiserGroupsInsert' = AdvertiserGroup
        requestClient AdvertiserGroupsInsert'{..}
          = go _agiProFileId (Just AltJSON) _agiPayload
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsInsertResource)
                      mempty
