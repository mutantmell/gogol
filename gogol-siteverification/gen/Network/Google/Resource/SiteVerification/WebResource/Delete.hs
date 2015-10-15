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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Relinquish ownership of a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceDelete@.
module Network.Google.Resource.SiteVerification.WebResource.Delete
    (
    -- * REST Resource
      WebResourceDeleteResource

    -- * Creating a Request
    , webResourceDelete'
    , WebResourceDelete'

    -- * Request Lenses
    , wrdId
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceDelete@ method which the
-- 'WebResourceDelete'' request conforms to.
type WebResourceDeleteResource =
     "webResource" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Relinquish ownership of a website or domain.
--
-- /See:/ 'webResourceDelete'' smart constructor.
newtype WebResourceDelete' = WebResourceDelete'
    { _wrdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrdId'
webResourceDelete'
    :: Text -- ^ 'id'
    -> WebResourceDelete'
webResourceDelete' pWrdId_ =
    WebResourceDelete'
    { _wrdId = pWrdId_
    }

-- | The id of a verified site or domain.
wrdId :: Lens' WebResourceDelete' Text
wrdId = lens _wrdId (\ s a -> s{_wrdId = a})

instance GoogleRequest WebResourceDelete' where
        type Rs WebResourceDelete' = ()
        requestClient WebResourceDelete'{..}
          = go _wrdId (Just AltJSON) siteVerification
          where go
                  = buildClient
                      (Proxy :: Proxy WebResourceDeleteResource)
                      mempty
