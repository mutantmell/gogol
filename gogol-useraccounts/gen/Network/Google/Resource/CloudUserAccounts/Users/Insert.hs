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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a User resource in the specified project using the data included
-- in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsUsersInsert@.
module Network.Google.Resource.CloudUserAccounts.Users.Insert
    (
    -- * REST Resource
      UsersInsertResource

    -- * Creating a Request
    , usersInsert'
    , UsersInsert'

    -- * Request Lenses
    , uiProject
    , uiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsUsersInsert@ method which the
-- 'UsersInsert'' request conforms to.
type UsersInsertResource =
     Capture "project" Text :>
       "global" :>
         "users" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] User :> Post '[JSON] Operation

-- | Creates a User resource in the specified project using the data included
-- in the request.
--
-- /See:/ 'usersInsert'' smart constructor.
data UsersInsert' = UsersInsert'
    { _uiProject :: !Text
    , _uiPayload :: !User
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiProject'
--
-- * 'uiPayload'
usersInsert'
    :: Text -- ^ 'project'
    -> User -- ^ 'payload'
    -> UsersInsert'
usersInsert' pUiProject_ pUiPayload_ =
    UsersInsert'
    { _uiProject = pUiProject_
    , _uiPayload = pUiPayload_
    }

-- | Project ID for this request.
uiProject :: Lens' UsersInsert' Text
uiProject
  = lens _uiProject (\ s a -> s{_uiProject = a})

-- | Multipart request metadata.
uiPayload :: Lens' UsersInsert' User
uiPayload
  = lens _uiPayload (\ s a -> s{_uiPayload = a})

instance GoogleRequest UsersInsert' where
        type Rs UsersInsert' = Operation
        requestClient UsersInsert'{..}
          = go _uiProject (Just AltJSON) _uiPayload
              userAccounts
          where go
                  = buildClient (Proxy :: Proxy UsersInsertResource)
                      mempty
