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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one content category by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesGet@.
module Network.Google.Resource.DFAReporting.ContentCategories.Get
    (
    -- * REST Resource
      ContentCategoriesGetResource

    -- * Creating a Request
    , contentCategoriesGet'
    , ContentCategoriesGet'

    -- * Request Lenses
    , ccgProFileId
    , ccgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesGet@ method which the
-- 'ContentCategoriesGet'' request conforms to.
type ContentCategoriesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ContentCategory

-- | Gets one content category by ID.
--
-- /See:/ 'contentCategoriesGet'' smart constructor.
data ContentCategoriesGet' = ContentCategoriesGet'
    { _ccgProFileId :: !Int64
    , _ccgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgProFileId'
--
-- * 'ccgId'
contentCategoriesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ContentCategoriesGet'
contentCategoriesGet' pCcgProFileId_ pCcgId_ =
    ContentCategoriesGet'
    { _ccgProFileId = pCcgProFileId_
    , _ccgId = pCcgId_
    }

-- | User profile ID associated with this request.
ccgProFileId :: Lens' ContentCategoriesGet' Int64
ccgProFileId
  = lens _ccgProFileId (\ s a -> s{_ccgProFileId = a})

-- | Content category ID.
ccgId :: Lens' ContentCategoriesGet' Int64
ccgId = lens _ccgId (\ s a -> s{_ccgId = a})

instance GoogleRequest ContentCategoriesGet' where
        type Rs ContentCategoriesGet' = ContentCategory
        requestClient ContentCategoriesGet'{..}
          = go _ccgProFileId _ccgId (Just AltJSON) dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesGetResource)
                      mempty
