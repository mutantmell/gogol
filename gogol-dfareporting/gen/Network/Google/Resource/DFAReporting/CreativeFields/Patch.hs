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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsPatch@.
module Network.Google.Resource.DFAReporting.CreativeFields.Patch
    (
    -- * REST Resource
      CreativeFieldsPatchResource

    -- * Creating a Request
    , creativeFieldsPatch'
    , CreativeFieldsPatch'

    -- * Request Lenses
    , cfpProFileId
    , cfpPayload
    , cfpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsPatch@ method which the
-- 'CreativeFieldsPatch'' request conforms to.
type CreativeFieldsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "id" Int64 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] CreativeField :>
                 Patch '[JSON] CreativeField

-- | Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ 'creativeFieldsPatch'' smart constructor.
data CreativeFieldsPatch' = CreativeFieldsPatch'
    { _cfpProFileId :: !Int64
    , _cfpPayload   :: !CreativeField
    , _cfpId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfpProFileId'
--
-- * 'cfpPayload'
--
-- * 'cfpId'
creativeFieldsPatch'
    :: Int64 -- ^ 'profileId'
    -> CreativeField -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> CreativeFieldsPatch'
creativeFieldsPatch' pCfpProFileId_ pCfpPayload_ pCfpId_ =
    CreativeFieldsPatch'
    { _cfpProFileId = pCfpProFileId_
    , _cfpPayload = pCfpPayload_
    , _cfpId = pCfpId_
    }

-- | User profile ID associated with this request.
cfpProFileId :: Lens' CreativeFieldsPatch' Int64
cfpProFileId
  = lens _cfpProFileId (\ s a -> s{_cfpProFileId = a})

-- | Multipart request metadata.
cfpPayload :: Lens' CreativeFieldsPatch' CreativeField
cfpPayload
  = lens _cfpPayload (\ s a -> s{_cfpPayload = a})

-- | Creative Field ID
cfpId :: Lens' CreativeFieldsPatch' Int64
cfpId = lens _cfpId (\ s a -> s{_cfpId = a})

instance GoogleRequest CreativeFieldsPatch' where
        type Rs CreativeFieldsPatch' = CreativeField
        requestClient CreativeFieldsPatch'{..}
          = go _cfpProFileId (Just _cfpId) (Just AltJSON)
              _cfpPayload
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsPatchResource)
                      mempty
