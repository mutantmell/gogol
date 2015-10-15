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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessList@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.List
    (
    -- * REST Resource
      ClientAccessListResource

    -- * Creating a Request
    , clientAccessList'
    , ClientAccessList'

    -- * Request Lenses
    , calPayload
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessList@ method which the
-- 'ClientAccessList'' request conforms to.
type ClientAccessListResource =
     "clientAccess" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] ListClientAccessCapabilitiesRequest
           :> Get '[JSON] ListClientAccessCapabilitiesResponse

--
-- /See:/ 'clientAccessList'' smart constructor.
newtype ClientAccessList' = ClientAccessList'
    { _calPayload :: ListClientAccessCapabilitiesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calPayload'
clientAccessList'
    :: ListClientAccessCapabilitiesRequest -- ^ 'payload'
    -> ClientAccessList'
clientAccessList' pCalPayload_ =
    ClientAccessList'
    { _calPayload = pCalPayload_
    }

-- | Multipart request metadata.
calPayload :: Lens' ClientAccessList' ListClientAccessCapabilitiesRequest
calPayload
  = lens _calPayload (\ s a -> s{_calPayload = a})

instance GoogleRequest ClientAccessList' where
        type Rs ClientAccessList' =
             ListClientAccessCapabilitiesResponse
        requestClient ClientAccessList'{..}
          = go (Just AltJSON) _calPayload adExchangeBuyer
          where go
                  = buildClient
                      (Proxy :: Proxy ClientAccessListResource)
                      mempty
