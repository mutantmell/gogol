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
-- Module      : Network.Google.Resource.DFAReporting.PostalCodes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of postal codes.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPostalCodesList@.
module Network.Google.Resource.DFAReporting.PostalCodes.List
    (
    -- * REST Resource
      PostalCodesListResource

    -- * Creating a Request
    , postalCodesList'
    , PostalCodesList'

    -- * Request Lenses
    , pclProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPostalCodesList@ method which the
-- 'PostalCodesList'' request conforms to.
type PostalCodesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "postalCodes" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PostalCodesListResponse

-- | Retrieves a list of postal codes.
--
-- /See:/ 'postalCodesList'' smart constructor.
newtype PostalCodesList' = PostalCodesList'
    { _pclProFileId :: Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCodesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclProFileId'
postalCodesList'
    :: Int64 -- ^ 'profileId'
    -> PostalCodesList'
postalCodesList' pPclProFileId_ =
    PostalCodesList'
    { _pclProFileId = pPclProFileId_
    }

-- | User profile ID associated with this request.
pclProFileId :: Lens' PostalCodesList' Int64
pclProFileId
  = lens _pclProFileId (\ s a -> s{_pclProFileId = a})

instance GoogleRequest PostalCodesList' where
        type Rs PostalCodesList' = PostalCodesListResponse
        requestClient PostalCodesList'{..}
          = go _pclProFileId (Just AltJSON) dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy PostalCodesListResource)
                      mempty
