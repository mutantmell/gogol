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
-- Module      : Network.Google.Resource.Content.Accounts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsDelete@.
module Network.Google.Resource.Content.Accounts.Delete
    (
    -- * REST Resource
      AccountsDeleteResource

    -- * Creating a Request
    , accountsDelete'
    , AccountsDelete'

    -- * Request Lenses
    , adMerchantId
    , adAccountId
    , adDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsDelete@ method which the
-- 'AccountsDelete'' request conforms to.
type AccountsDeleteResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Merchant Center sub-account.
--
-- /See:/ 'accountsDelete'' smart constructor.
data AccountsDelete' = AccountsDelete'
    { _adMerchantId :: !Word64
    , _adAccountId  :: !Word64
    , _adDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adMerchantId'
--
-- * 'adAccountId'
--
-- * 'adDryRun'
accountsDelete'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccountsDelete'
accountsDelete' pAdMerchantId_ pAdAccountId_ =
    AccountsDelete'
    { _adMerchantId = pAdMerchantId_
    , _adAccountId = pAdAccountId_
    , _adDryRun = Nothing
    }

-- | The ID of the managing account.
adMerchantId :: Lens' AccountsDelete' Word64
adMerchantId
  = lens _adMerchantId (\ s a -> s{_adMerchantId = a})

-- | The ID of the account.
adAccountId :: Lens' AccountsDelete' Word64
adAccountId
  = lens _adAccountId (\ s a -> s{_adAccountId = a})

-- | Flag to run the request in dry-run mode.
adDryRun :: Lens' AccountsDelete' (Maybe Bool)
adDryRun = lens _adDryRun (\ s a -> s{_adDryRun = a})

instance GoogleRequest AccountsDelete' where
        type Rs AccountsDelete' = ()
        requestClient AccountsDelete'{..}
          = go _adMerchantId _adAccountId _adDryRun
              (Just AltJSON)
              shoppingContent
          where go
                  = buildClient (Proxy :: Proxy AccountsDeleteResource)
                      mempty
