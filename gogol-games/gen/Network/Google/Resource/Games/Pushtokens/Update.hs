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
-- Module      : Network.Google.Resource.Games.Pushtokens.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Registers a push token for the current user and application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesPushtokensUpdate@.
module Network.Google.Resource.Games.Pushtokens.Update
    (
    -- * REST Resource
      PushtokensUpdateResource

    -- * Creating a Request
    , pushtokensUpdate'
    , PushtokensUpdate'

    -- * Request Lenses
    , puPayload
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPushtokensUpdate@ method which the
-- 'PushtokensUpdate'' request conforms to.
type PushtokensUpdateResource =
     "pushtokens" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] PushToken :> Put '[JSON] ()

-- | Registers a push token for the current user and application.
--
-- /See:/ 'pushtokensUpdate'' smart constructor.
newtype PushtokensUpdate' = PushtokensUpdate'
    { _puPayload :: PushToken
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushtokensUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puPayload'
pushtokensUpdate'
    :: PushToken -- ^ 'payload'
    -> PushtokensUpdate'
pushtokensUpdate' pPuPayload_ =
    PushtokensUpdate'
    { _puPayload = pPuPayload_
    }

-- | Multipart request metadata.
puPayload :: Lens' PushtokensUpdate' PushToken
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

instance GoogleRequest PushtokensUpdate' where
        type Rs PushtokensUpdate' = ()
        requestClient PushtokensUpdate'{..}
          = go (Just AltJSON) _puPayload games
          where go
                  = buildClient
                      (Proxy :: Proxy PushtokensUpdateResource)
                      mempty
