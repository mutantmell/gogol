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
-- Module      : Network.Google.Resource.Reports.CustomerUsageReports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report which is a collection of properties \/ statistics for
-- a specific customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @ReportsCustomerUsageReportsGet@.
module Network.Google.Resource.Reports.CustomerUsageReports.Get
    (
    -- * REST Resource
      CustomerUsageReportsGetResource

    -- * Creating a Request
    , customerUsageReportsGet'
    , CustomerUsageReportsGet'

    -- * Request Lenses
    , curgCustomerId
    , curgDate
    , curgParameters
    , curgPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types

-- | A resource alias for @ReportsCustomerUsageReportsGet@ method which the
-- 'CustomerUsageReportsGet'' request conforms to.
type CustomerUsageReportsGetResource =
     "usage" :>
       "dates" :>
         Capture "date" Text :>
           QueryParam "customerId" Text :>
             QueryParam "parameters" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a specific customer.
--
-- /See:/ 'customerUsageReportsGet'' smart constructor.
data CustomerUsageReportsGet' = CustomerUsageReportsGet'
    { _curgCustomerId :: !(Maybe Text)
    , _curgDate       :: !Text
    , _curgParameters :: !(Maybe Text)
    , _curgPageToken  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerUsageReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'curgCustomerId'
--
-- * 'curgDate'
--
-- * 'curgParameters'
--
-- * 'curgPageToken'
customerUsageReportsGet'
    :: Text -- ^ 'date'
    -> CustomerUsageReportsGet'
customerUsageReportsGet' pCurgDate_ =
    CustomerUsageReportsGet'
    { _curgCustomerId = Nothing
    , _curgDate = pCurgDate_
    , _curgParameters = Nothing
    , _curgPageToken = Nothing
    }

-- | Represents the customer for which the data is to be fetched.
curgCustomerId :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgCustomerId
  = lens _curgCustomerId
      (\ s a -> s{_curgCustomerId = a})

-- | Represents the date in yyyy-mm-dd format for which the data is to be
-- fetched.
curgDate :: Lens' CustomerUsageReportsGet' Text
curgDate = lens _curgDate (\ s a -> s{_curgDate = a})

-- | Represents the application name, parameter name pairs to fetch in csv as
-- app_name1:param_name1, app_name2:param_name2.
curgParameters :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgParameters
  = lens _curgParameters
      (\ s a -> s{_curgParameters = a})

-- | Token to specify next page.
curgPageToken :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgPageToken
  = lens _curgPageToken
      (\ s a -> s{_curgPageToken = a})

instance GoogleRequest CustomerUsageReportsGet' where
        type Rs CustomerUsageReportsGet' = UsageReports
        requestClient CustomerUsageReportsGet'{..}
          = go _curgDate _curgCustomerId _curgParameters
              _curgPageToken
              (Just AltJSON)
              reports
          where go
                  = buildClient
                      (Proxy :: Proxy CustomerUsageReportsGetResource)
                      mempty
