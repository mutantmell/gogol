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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a read group set. This method supports patch semantics.
--
-- /See:/ < Genomics API Reference> for @GenomicsReadgroupsetsPatch@.
module Network.Google.Resource.Genomics.Readgroupsets.Patch
    (
    -- * REST Resource
      ReadgroupsetsPatchResource

    -- * Creating a Request
    , readgroupsetsPatch'
    , ReadgroupsetsPatch'

    -- * Request Lenses
    , rpXgafv
    , rpReadGroupSetId
    , rpUploadProtocol
    , rpUpdateMask
    , rpPp
    , rpAccessToken
    , rpUploadType
    , rpPayload
    , rpBearerToken
    , rpCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsPatch@ method which the
-- 'ReadgroupsetsPatch'' request conforms to.
type ReadgroupsetsPatchResource =
     "v1" :>
       "readgroupsets" :>
         Capture "readGroupSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ReadGroupSet :>
                               Patch '[JSON] ReadGroupSet

-- | Updates a read group set. This method supports patch semantics.
--
-- /See:/ 'readgroupsetsPatch'' smart constructor.
data ReadgroupsetsPatch' = ReadgroupsetsPatch'
    { _rpXgafv          :: !(Maybe Text)
    , _rpReadGroupSetId :: !Text
    , _rpUploadProtocol :: !(Maybe Text)
    , _rpUpdateMask     :: !(Maybe Text)
    , _rpPp             :: !Bool
    , _rpAccessToken    :: !(Maybe Text)
    , _rpUploadType     :: !(Maybe Text)
    , _rpPayload        :: !ReadGroupSet
    , _rpBearerToken    :: !(Maybe Text)
    , _rpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpXgafv'
--
-- * 'rpReadGroupSetId'
--
-- * 'rpUploadProtocol'
--
-- * 'rpUpdateMask'
--
-- * 'rpPp'
--
-- * 'rpAccessToken'
--
-- * 'rpUploadType'
--
-- * 'rpPayload'
--
-- * 'rpBearerToken'
--
-- * 'rpCallback'
readgroupsetsPatch'
    :: Text -- ^ 'readGroupSetId'
    -> ReadGroupSet -- ^ 'payload'
    -> ReadgroupsetsPatch'
readgroupsetsPatch' pRpReadGroupSetId_ pRpPayload_ =
    ReadgroupsetsPatch'
    { _rpXgafv = Nothing
    , _rpReadGroupSetId = pRpReadGroupSetId_
    , _rpUploadProtocol = Nothing
    , _rpUpdateMask = Nothing
    , _rpPp = True
    , _rpAccessToken = Nothing
    , _rpUploadType = Nothing
    , _rpPayload = pRpPayload_
    , _rpBearerToken = Nothing
    , _rpCallback = Nothing
    }

-- | V1 error format.
rpXgafv :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpXgafv = lens _rpXgafv (\ s a -> s{_rpXgafv = a})

-- | The ID of the read group set to be updated. The caller must have WRITE
-- permissions to the dataset associated with this read group set.
rpReadGroupSetId :: Lens' ReadgroupsetsPatch' Text
rpReadGroupSetId
  = lens _rpReadGroupSetId
      (\ s a -> s{_rpReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rpUploadProtocol :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpUploadProtocol
  = lens _rpUploadProtocol
      (\ s a -> s{_rpUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time,
-- mutable fields are referenceSetId and name. Acceptable values are
-- \"referenceSetId\" and \"name\". If unspecified, all mutable fields will
-- be updated.
rpUpdateMask :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpUpdateMask
  = lens _rpUpdateMask (\ s a -> s{_rpUpdateMask = a})

-- | Pretty-print response.
rpPp :: Lens' ReadgroupsetsPatch' Bool
rpPp = lens _rpPp (\ s a -> s{_rpPp = a})

-- | OAuth access token.
rpAccessToken :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpAccessToken
  = lens _rpAccessToken
      (\ s a -> s{_rpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rpUploadType :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpUploadType
  = lens _rpUploadType (\ s a -> s{_rpUploadType = a})

-- | Multipart request metadata.
rpPayload :: Lens' ReadgroupsetsPatch' ReadGroupSet
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | OAuth bearer token.
rpBearerToken :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpBearerToken
  = lens _rpBearerToken
      (\ s a -> s{_rpBearerToken = a})

-- | JSONP
rpCallback :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpCallback
  = lens _rpCallback (\ s a -> s{_rpCallback = a})

instance GoogleRequest ReadgroupsetsPatch' where
        type Rs ReadgroupsetsPatch' = ReadGroupSet
        requestClient ReadgroupsetsPatch'{..}
          = go _rpReadGroupSetId _rpXgafv _rpUploadProtocol
              _rpUpdateMask
              (Just _rpPp)
              _rpAccessToken
              _rpUploadType
              _rpBearerToken
              _rpCallback
              (Just AltJSON)
              _rpPayload
              genomics
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsPatchResource)
                      mempty
