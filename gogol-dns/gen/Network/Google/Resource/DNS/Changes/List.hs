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
-- Module      : Network.Google.Resource.DNS.Changes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enumerate Changes to a ResourceRecordSet collection.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSChangesList@.
module Network.Google.Resource.DNS.Changes.List
    (
    -- * REST Resource
      ChangesListResource

    -- * Creating a Request
    , changesList'
    , ChangesList'

    -- * Request Lenses
    , clProject
    , clSortOrder
    , clPageToken
    , clManagedZone
    , clMaxResults
    , clSortBy
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSChangesList@ method which the
-- 'ChangesList'' request conforms to.
type ChangesListResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           "changes" :>
             QueryParam "sortOrder" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "sortBy" ChangesListSortBy :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ChangesListResponse

-- | Enumerate Changes to a ResourceRecordSet collection.
--
-- /See:/ 'changesList'' smart constructor.
data ChangesList' = ChangesList'
    { _clProject     :: !Text
    , _clSortOrder   :: !(Maybe Text)
    , _clPageToken   :: !(Maybe Text)
    , _clManagedZone :: !Text
    , _clMaxResults  :: !(Maybe Int32)
    , _clSortBy      :: !ChangesListSortBy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clProject'
--
-- * 'clSortOrder'
--
-- * 'clPageToken'
--
-- * 'clManagedZone'
--
-- * 'clMaxResults'
--
-- * 'clSortBy'
changesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ChangesList'
changesList' pClProject_ pClManagedZone_ =
    ChangesList'
    { _clProject = pClProject_
    , _clSortOrder = Nothing
    , _clPageToken = Nothing
    , _clManagedZone = pClManagedZone_
    , _clMaxResults = Nothing
    , _clSortBy = ChangeSequence
    }

-- | Identifies the project addressed by this request.
clProject :: Lens' ChangesList' Text
clProject
  = lens _clProject (\ s a -> s{_clProject = a})

-- | Sorting order direction: \'ascending\' or \'descending\'.
clSortOrder :: Lens' ChangesList' (Maybe Text)
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
clPageToken :: Lens' ChangesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
clManagedZone :: Lens' ChangesList' Text
clManagedZone
  = lens _clManagedZone
      (\ s a -> s{_clManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
clMaxResults :: Lens' ChangesList' (Maybe Int32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Sorting criterion. The only supported value is change sequence.
clSortBy :: Lens' ChangesList' ChangesListSortBy
clSortBy = lens _clSortBy (\ s a -> s{_clSortBy = a})

instance GoogleRequest ChangesList' where
        type Rs ChangesList' = ChangesListResponse
        requestClient ChangesList'{..}
          = go _clProject _clManagedZone _clSortOrder
              _clPageToken
              _clMaxResults
              (Just _clSortBy)
              (Just AltJSON)
              dNS
          where go
                  = buildClient (Proxy :: Proxy ChangesListResource)
                      mempty
