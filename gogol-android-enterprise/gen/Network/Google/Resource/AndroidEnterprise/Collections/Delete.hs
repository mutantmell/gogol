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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsDelete@.
module Network.Google.Resource.AndroidEnterprise.Collections.Delete
    (
    -- * REST Resource
      CollectionsDeleteResource

    -- * Creating a Request
    , collectionsDelete'
    , CollectionsDelete'

    -- * Request Lenses
    , cdEnterpriseId
    , cdCollectionId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsDelete@ method which the
-- 'CollectionsDelete'' request conforms to.
type CollectionsDeleteResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a collection.
--
-- /See:/ 'collectionsDelete'' smart constructor.
data CollectionsDelete' = CollectionsDelete'
    { _cdEnterpriseId :: !Text
    , _cdCollectionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdEnterpriseId'
--
-- * 'cdCollectionId'
collectionsDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsDelete'
collectionsDelete' pCdEnterpriseId_ pCdCollectionId_ =
    CollectionsDelete'
    { _cdEnterpriseId = pCdEnterpriseId_
    , _cdCollectionId = pCdCollectionId_
    }

-- | The ID of the enterprise.
cdEnterpriseId :: Lens' CollectionsDelete' Text
cdEnterpriseId
  = lens _cdEnterpriseId
      (\ s a -> s{_cdEnterpriseId = a})

-- | The ID of the collection.
cdCollectionId :: Lens' CollectionsDelete' Text
cdCollectionId
  = lens _cdCollectionId
      (\ s a -> s{_cdCollectionId = a})

instance GoogleRequest CollectionsDelete' where
        type Rs CollectionsDelete' = ()
        requestClient CollectionsDelete'{..}
          = go _cdEnterpriseId _cdCollectionId (Just AltJSON)
              androidEnterprise
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsDeleteResource)
                      mempty
