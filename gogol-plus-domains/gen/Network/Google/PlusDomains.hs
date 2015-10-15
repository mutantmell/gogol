{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlusDomains
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google+ API enables developers to build on top of the Google+
-- platform.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference>
module Network.Google.PlusDomains
    (
    -- * Service Configuration
      plusDomains

    -- * API Declaration
    , PlusDomainsAPI

    -- * Resources

    -- ** PlusDomainsActivitiesGet
    , module Network.Google.Resource.PlusDomains.Activities.Get

    -- ** PlusDomainsActivitiesInsert
    , module Network.Google.Resource.PlusDomains.Activities.Insert

    -- ** PlusDomainsActivitiesList
    , module Network.Google.Resource.PlusDomains.Activities.List

    -- ** PlusDomainsAudiencesList
    , module Network.Google.Resource.PlusDomains.Audiences.List

    -- ** PlusDomainsCirclesAddPeople
    , module Network.Google.Resource.PlusDomains.Circles.AddPeople

    -- ** PlusDomainsCirclesGet
    , module Network.Google.Resource.PlusDomains.Circles.Get

    -- ** PlusDomainsCirclesInsert
    , module Network.Google.Resource.PlusDomains.Circles.Insert

    -- ** PlusDomainsCirclesList
    , module Network.Google.Resource.PlusDomains.Circles.List

    -- ** PlusDomainsCirclesPatch
    , module Network.Google.Resource.PlusDomains.Circles.Patch

    -- ** PlusDomainsCirclesRemove
    , module Network.Google.Resource.PlusDomains.Circles.Remove

    -- ** PlusDomainsCirclesRemovePeople
    , module Network.Google.Resource.PlusDomains.Circles.RemovePeople

    -- ** PlusDomainsCirclesUpdate
    , module Network.Google.Resource.PlusDomains.Circles.Update

    -- ** PlusDomainsCommentsGet
    , module Network.Google.Resource.PlusDomains.Comments.Get

    -- ** PlusDomainsCommentsInsert
    , module Network.Google.Resource.PlusDomains.Comments.Insert

    -- ** PlusDomainsCommentsList
    , module Network.Google.Resource.PlusDomains.Comments.List

    -- ** PlusDomainsMediaInsert
    , module Network.Google.Resource.PlusDomains.Media.Insert

    -- ** PlusDomainsPeopleGet
    , module Network.Google.Resource.PlusDomains.People.Get

    -- ** PlusDomainsPeopleList
    , module Network.Google.Resource.PlusDomains.People.List

    -- ** PlusDomainsPeopleListByActivity
    , module Network.Google.Resource.PlusDomains.People.ListByActivity

    -- ** PlusDomainsPeopleListByCircle
    , module Network.Google.Resource.PlusDomains.People.ListByCircle

    -- * Types

    -- ** Audience
    , Audience
    , audience
    , aEtag
    , aKind
    , aVisibility
    , aItem
    , aMemberCount

    -- ** ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- ** ActivityObjectAttachmentsItemEmbed
    , ActivityObjectAttachmentsItemEmbed
    , activityObjectAttachmentsItemEmbed
    , aoaieURL
    , aoaieType

    -- ** CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cpTotalItems

    -- ** ActivityObjectPlusoners
    , ActivityObjectPlusoners
    , activityObjectPlusoners
    , aopTotalItems
    , aopSelfLink

    -- ** PersonEmailsItem
    , PersonEmailsItem
    , personEmailsItem
    , peiValue
    , peiType

    -- ** CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

    -- ** ActivityObjectAttachmentsItemThumbnailsItemImage
    , ActivityObjectAttachmentsItemThumbnailsItemImage
    , activityObjectAttachmentsItemThumbnailsItemImage
    , aoaitiiHeight
    , aoaitiiURL
    , aoaitiiWidth
    , aoaitiiType

    -- ** PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- ** PersonPlacesLivedItem
    , PersonPlacesLivedItem
    , personPlacesLivedItem
    , ppliValue
    , ppliPrimary

    -- ** Circle
    , Circle
    , circle
    , cEtag
    , cKind
    , cPeople
    , cSelfLink
    , cDisplayName
    , cId
    , cDescription

    -- ** Person
    , Person
    , person
    , pCurrentLocation
    , pEtag
    , pImage
    , pBraggingRights
    , pPlacesLived
    , pPlusOneCount
    , pObjectType
    , pCover
    , pKind
    , pRelationshipStatus
    , pURLs
    , pDomain
    , pURL
    , pVerified
    , pBirthday
    , pIsPlusUser
    , pTagline
    , pGender
    , pName
    , pEmails
    , pOccupation
    , pSkills
    , pAboutMe
    , pDisplayName
    , pId
    , pNickname
    , pOrganizations
    , pCircledByCount

    -- ** Videostream
    , Videostream
    , videostream
    , vHeight
    , vURL
    , vWidth
    , vType

    -- ** MediaInsertCollection
    , MediaInsertCollection (..)

    -- ** CircleFeed
    , CircleFeed
    , circleFeed
    , cfTotalItems
    , cfEtag
    , cfNextPageToken
    , cfNextLink
    , cfKind
    , cfItems
    , cfSelfLink
    , cfTitle

    -- ** ActivityObjectAttachmentsItemImage
    , ActivityObjectAttachmentsItemImage
    , activityObjectAttachmentsItemImage
    , aoaiiHeight
    , aoaiiURL
    , aoaiiWidth
    , aoaiiType

    -- ** CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caURL
    , caDisplayName
    , caId
    , caVerification

    -- ** ActivityObject
    , ActivityObject
    , activityObject
    , aoPlusoners
    , aoAttachments
    , aoObjectType
    , aoOriginalContent
    , aoURL
    , aoActor
    , aoContent
    , aoReplies
    , aoId
    , aoStatusForViewer
    , aoResharers

    -- ** ActivityObjectActor
    , ActivityObjectActor
    , activityObjectActor
    , aoaImage
    , aoaURL
    , aoaDisplayName
    , aoaId
    , aoaVerification

    -- ** ActivityObjectAttachmentsItemFullImage
    , ActivityObjectAttachmentsItemFullImage
    , activityObjectAttachmentsItemFullImage
    , aoaifiHeight
    , aoaifiURL
    , aoaifiWidth
    , aoaifiType

    -- ** MediaAuthorImage
    , MediaAuthorImage
    , mediaAuthorImage
    , maiURL

    -- ** PeopleListByActivityCollection
    , PeopleListByActivityCollection (..)

    -- ** CirclePeople
    , CirclePeople
    , circlePeople
    , cTotalItems

    -- ** PlusDomainsACLentryResource
    , PlusDomainsACLentryResource
    , plusDomainsACLentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

    -- ** ActivityActorImage
    , ActivityActorImage
    , activityActorImage
    , aaiURL

    -- ** PeopleFeed
    , PeopleFeed
    , peopleFeed
    , pfTotalItems
    , pfEtag
    , pfNextPageToken
    , pfKind
    , pfItems
    , pfSelfLink
    , pfTitle

    -- ** PersonCoverCoverPhoto
    , PersonCoverCoverPhoto
    , personCoverCoverPhoto
    , pccpHeight
    , pccpURL
    , pccpWidth

    -- ** MediaAuthor
    , MediaAuthor
    , mediaAuthor
    , maImage
    , maURL
    , maDisplayName
    , maId

    -- ** ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , aoaiURL

    -- ** Media
    , Media
    , media
    , mSizeBytes
    , mSummary
    , mEtag
    , mHeight
    , mVideoDuration
    , mVideoStatus
    , mKind
    , mPublished
    , mURL
    , mWidth
    , mMediaURL
    , mStreams
    , mExif
    , mDisplayName
    , mAuthor
    , mId
    , mUpdated
    , mMediaCreatedTime

    -- ** PeopleListOrderBy
    , PeopleListOrderBy (..)

    -- ** ActivityObjectReplies
    , ActivityObjectReplies
    , activityObjectReplies
    , aorTotalItems
    , aorSelfLink

    -- ** ActivitiesListCollection
    , ActivitiesListCollection (..)

    -- ** ActivityObjectAttachmentsItemPreviewThumbnailsItem
    , ActivityObjectAttachmentsItemPreviewThumbnailsItem
    , activityObjectAttachmentsItemPreviewThumbnailsItem
    , aoaiptiURL

    -- ** ActivityActorVerification
    , ActivityActorVerification
    , activityActorVerification
    , aavAdHocVerified

    -- ** PeopleListCollection
    , PeopleListCollection (..)

    -- ** ActivityObjectAttachmentsItem
    , ActivityObjectAttachmentsItem
    , activityObjectAttachmentsItem
    , aFullImage
    , aImage
    , aObjectType
    , aPreviewThumbnails
    , aURL
    , aEmbed
    , aContent
    , aThumbnails
    , aDisplayName
    , aId

    -- ** ActivityFeed
    , ActivityFeed
    , activityFeed
    , afEtag
    , afNextPageToken
    , afNextLink
    , afKind
    , afItems
    , afSelfLink
    , afId
    , afUpdated
    , afTitle

    -- ** ActivityObjectActorVerification
    , ActivityObjectActorVerification
    , activityObjectActorVerification
    , aoavAdHocVerified

    -- ** PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- ** PersonImage
    , PersonImage
    , personImage
    , piURL
    , piIsDefault

    -- ** ActivityObjectStatusForViewer
    , ActivityObjectStatusForViewer
    , activityObjectStatusForViewer
    , aosfvCanComment
    , aosfvResharingDisabled
    , aosfvCanUpdate
    , aosfvIsPlusOned
    , aosfvCanPlusone

    -- ** Activity
    , Activity
    , activity
    , actAccess
    , actPlaceName
    , actEtag
    , actAnnotation
    , actLocation
    , actGeocode
    , actKind
    , actRadius
    , actPublished
    , actURL
    , actActor
    , actAddress
    , actObject
    , actId
    , actUpdated
    , actTitle
    , actVerb
    , actCrosspostSource
    , actPlaceId
    , actProvider

    -- ** PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- ** AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

    -- ** ActivityObjectAttachmentsItemThumbnailsItem
    , ActivityObjectAttachmentsItemThumbnailsItem
    , activityObjectAttachmentsItemThumbnailsItem
    , aoaitiImage
    , aoaitiURL
    , aoaitiDescription

    -- ** PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- ** CommentInReplyToItem
    , CommentInReplyToItem
    , commentInReplyToItem
    , cirtiURL
    , cirtiId

    -- ** PersonOrganizationsItem
    , PersonOrganizationsItem
    , personOrganizationsItem
    , poiDePartment
    , poiLocation
    , poiEndDate
    , poiPrimary
    , poiStartDate
    , poiName
    , poiTitle
    , poiType
    , poiDescription

    -- ** PersonURLsItem
    , PersonURLsItem
    , personURLsItem
    , puiValue
    , puiType
    , puiLabel

    -- ** PersonCoverCoverInfo
    , PersonCoverCoverInfo
    , personCoverCoverInfo
    , pcciTopImageOffset
    , pcciLeftImageOffset

    -- ** ActivityObjectResharers
    , ActivityObjectResharers
    , activityObjectResharers
    , aTotalItems
    , aSelfLink

    -- ** Comment
    , Comment
    , comment
    , comEtag
    , comPlusoners
    , comKind
    , comPublished
    , comActor
    , comSelfLink
    , comObject
    , comId
    , comUpdated
    , comVerb
    , comInReplyTo

    -- ** Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- ** ACL
    , ACL
    , acl
    , aclcKind
    , aclcItems
    , aclcDomainRestricted
    , aclcDescription

    -- ** MediaExif
    , MediaExif
    , mediaExif
    , meTime

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaImage
    , aaURL
    , aaName
    , aaDisplayName
    , aaId
    , aaVerification

    -- ** CommentsListSortOrder
    , CommentsListSortOrder (..)

    -- ** CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- ** CommentFeed
    , CommentFeed
    , commentFeed
    , cffEtag
    , cffNextPageToken
    , cffNextLink
    , cffKind
    , cffItems
    , cffId
    , cffUpdated
    , cffTitle

    -- ** CommentActorVerification
    , CommentActorVerification
    , commentActorVerification
    , cavAdHocVerified

    -- ** ActivityActorName
    , ActivityActorName
    , activityActorName
    , aanGivenName
    , aanFamilyName
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude
import           Network.Google.Resource.PlusDomains.Activities.Get
import           Network.Google.Resource.PlusDomains.Activities.Insert
import           Network.Google.Resource.PlusDomains.Activities.List
import           Network.Google.Resource.PlusDomains.Audiences.List
import           Network.Google.Resource.PlusDomains.Circles.AddPeople
import           Network.Google.Resource.PlusDomains.Circles.Get
import           Network.Google.Resource.PlusDomains.Circles.Insert
import           Network.Google.Resource.PlusDomains.Circles.List
import           Network.Google.Resource.PlusDomains.Circles.Patch
import           Network.Google.Resource.PlusDomains.Circles.Remove
import           Network.Google.Resource.PlusDomains.Circles.RemovePeople
import           Network.Google.Resource.PlusDomains.Circles.Update
import           Network.Google.Resource.PlusDomains.Comments.Get
import           Network.Google.Resource.PlusDomains.Comments.Insert
import           Network.Google.Resource.PlusDomains.Comments.List
import           Network.Google.Resource.PlusDomains.Media.Insert
import           Network.Google.Resource.PlusDomains.People.Get
import           Network.Google.Resource.PlusDomains.People.List
import           Network.Google.Resource.PlusDomains.People.ListByActivity
import           Network.Google.Resource.PlusDomains.People.ListByCircle

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google+ Domains API service.
type PlusDomainsAPI =
     ActivitiesInsertResource :<|> ActivitiesListResource
       :<|> ActivitiesGetResource
       :<|> PeopleListResource
       :<|> PeopleListByCircleResource
       :<|> PeopleGetResource
       :<|> PeopleListByActivityResource
       :<|> MediaInsertResource
       :<|> AudiencesListResource
       :<|> CommentsInsertResource
       :<|> CommentsListResource
       :<|> CommentsGetResource
       :<|> CirclesInsertResource
       :<|> CirclesAddPeopleResource
       :<|> CirclesListResource
       :<|> CirclesPatchResource
       :<|> CirclesGetResource
       :<|> CirclesRemoveResource
       :<|> CirclesRemovePeopleResource
       :<|> CirclesUpdateResource
