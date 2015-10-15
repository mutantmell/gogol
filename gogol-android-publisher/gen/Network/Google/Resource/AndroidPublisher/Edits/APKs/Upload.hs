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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKsUpload@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
    (
    -- * REST Resource
      EditsAPKsUploadResource

    -- * Creating a Request
    , editsAPKsUpload'
    , EditsAPKsUpload'

    -- * Request Lenses
    , eapkuPackageName
    , eapkuMedia
    , eapkuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKsUpload@ method which the
-- 'EditsAPKsUpload'' request conforms to.
type EditsAPKsUploadResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[OctetStream] Body :> Post '[JSON] APK

--
-- /See:/ 'editsAPKsUpload'' smart constructor.
data EditsAPKsUpload' = EditsAPKsUpload'
    { _eapkuPackageName :: !Text
    , _eapkuMedia       :: !Body
    , _eapkuEditId      :: !Text
    }

-- | Creates a value of 'EditsAPKsUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkuPackageName'
--
-- * 'eapkuMedia'
--
-- * 'eapkuEditId'
editsAPKsUpload'
    :: Text -- ^ 'packageName'
    -> Body -- ^ 'media'
    -> Text -- ^ 'editId'
    -> EditsAPKsUpload'
editsAPKsUpload' pEapkuPackageName_ pEapkuMedia_ pEapkuEditId_ =
    EditsAPKsUpload'
    { _eapkuPackageName = pEapkuPackageName_
    , _eapkuMedia = pEapkuMedia_
    , _eapkuEditId = pEapkuEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkuPackageName :: Lens' EditsAPKsUpload' Text
eapkuPackageName
  = lens _eapkuPackageName
      (\ s a -> s{_eapkuPackageName = a})

eapkuMedia :: Lens' EditsAPKsUpload' Body
eapkuMedia
  = lens _eapkuMedia (\ s a -> s{_eapkuMedia = a})

-- | Unique identifier for this edit.
eapkuEditId :: Lens' EditsAPKsUpload' Text
eapkuEditId
  = lens _eapkuEditId (\ s a -> s{_eapkuEditId = a})

instance GoogleRequest EditsAPKsUpload' where
        type Rs EditsAPKsUpload' = APK
        requestClient EditsAPKsUpload'{..}
          = go _eapkuPackageName _eapkuEditId (Just AltJSON)
              _eapkuMedia
              androidPublisher
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKsUploadResource)
                      mempty
