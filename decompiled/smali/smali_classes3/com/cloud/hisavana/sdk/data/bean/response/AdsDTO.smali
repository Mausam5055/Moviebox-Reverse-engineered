.class public Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
.super Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actualShowRate:Ljava/lang/Integer;

.field private actualShowTime:Ljava/lang/Long;

.field private adPsType:Ljava/lang/Integer;

.field private adRequestVer:I

.field private adSeatType:Ljava/lang/String;

.field private adclickTimeStamp:J

.field private autoRetentionTime:I

.field private bannerStyle:I

.field private calledUrlType:I

.field private campaignname:Ljava/lang/String;

.field private clickUrlTs:J

.field private click_link:Ljava/lang/String;

.field private clickid:Ljava/lang/String;

.field private closeDelayTime:I

.field private deepLinkUrlFirst:Ljava/lang/String;

.field private defaultAdSupportNetType:I

.field private defaultMaterialType:I

.field private downloadArea:I

.field private endCardType:I

.field private expiredDate:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fill_ts:Ljava/lang/Long;

.field private halfScreenType:Ljava/lang/String;

.field private imageIsDownload:Ljava/lang/Boolean;

.field private impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field private impressionUrl:Ljava/lang/String;

.field private indexLocation:Ljava/lang/String;

.field private isACReady:Ljava/lang/Boolean;

.field private isAdClickTracking:Z

.field private isEffectiveShow:Ljava/lang/Integer;

.field private isFromJs:Z

.field private isFromLocal:Z

.field private isJumpToHalfscreen:Z

.field private isMatchVulgarBrand:Z

.field private isOptimizeTracking:Z

.field private isShowSourceSize:Z

.field private isUpdateClickUrl:Z

.field private isVastDownloadSuccess:Z

.field private isVastTypeAd:Z

.field private jsCodeSeatId:Ljava/lang/String;

.field private jsMediaId:Ljava/lang/String;

.field private jsRequestId:Ljava/lang/String;

.field private jsTriggerId:Ljava/lang/String;

.field private materialHeight:I

.field private materialWith:I

.field offlineAdExpireTime:Ljava/lang/Long;

.field offlineAdLaunchDateStr:Ljava/lang/String;

.field offlineAdStartDateLong:Ljava/lang/Long;

.field private preloadStatus:I

.field private pslinkAppName:Ljava/lang/String;

.field private pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

.field private realLandUrl:Ljava/lang/String;

.field private requestPsTs:J

.field private retentionEndCardRatio:I

.field private returnPsTs:J

.field private showArea:Ljava/lang/String;

.field private showDate:J

.field private showNum:Ljava/lang/Integer;

.field private showPsFlag:Z

.field private showReportTimeType:Ljava/lang/Integer;

.field private source:I

.field private splashCountTime:Ljava/lang/Integer;

.field private tableId:I

.field private trackUserClickArea:I

.field private triggerShowSpend:J

.field private uuid:Ljava/lang/String;

.field private videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

.field private viewHeight:I

.field private viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO$1;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    const-string v2, "0*0"

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    const/4 v3, 0x3

    iput v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    iput v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    const-string v2, "0*0"

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    const/4 v3, 0x3

    iput v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    iput v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_1

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_3

    :cond_2
    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_5

    :cond_4
    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_6

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_7

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_8

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_9

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_a

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_b

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_c

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    goto :goto_c

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_d

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    goto :goto_d

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    move v1, v0

    :goto_e
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showPsFlag:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    move v1, v0

    :goto_f
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    move v1, v0

    :goto_10
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    move v1, v0

    :goto_11
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    move v1, v0

    :goto_12
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_13

    :cond_13
    move v1, v0

    :goto_13
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_14

    :cond_14
    move v1, v0

    :goto_14
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_15

    :cond_15
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_16

    :cond_16
    move v1, v0

    :goto_16
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_17

    :cond_17
    move v1, v0

    :goto_17
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_18

    move v0, v2

    :cond_18
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getACReady()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getActualShowRate()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getActualShowTime()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAdPsType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAdRequestVer()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    return v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    :goto_0
    return v0
.end method

.method public getAutoRetentionTime()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    return v0
.end method

.method public getBannerStyle()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    return v0
.end method

.method public getCalledUrlType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    return v0
.end method

.method public getCampaignname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrlTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    return-wide v0
.end method

.method public getClick_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getClickid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseDelayTime()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    return v0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDeepLinkUrlFirst()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDefaultAdSupportNetType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    return v0
.end method

.method public getDefaultMaterialType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    return v0
.end method

.method public getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;
    .locals 2

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k1;->s()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object v0

    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object v0
.end method

.method public getDownloadArea()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    return v0
.end method

.method public getEndCardType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    return v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFill_ts()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getHalfScreenType()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HalfScreenType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "palmplay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHalfScreenType error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    return-object v0

    :cond_4
    :goto_2
    const-string v0, ""

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageIsDownload()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-object v0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEffectiveShow()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getJsCodeSeatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsCodeSeatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getJsMediaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsMediaId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getJsRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsRequestId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getJsTriggerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialHeight()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    return v0
.end method

.method public getMaterialWith()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    return v0
.end method

.method public getMaxShowCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOfflineAdExpireTime()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineAdLaunchDateStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineAdStartDateLong()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineH5Url()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getOmIdVerifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getOmSdkVerifications()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadStatus()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    return v0
.end method

.method public getPslinkAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    return-object v0
.end method

.method public getPslinkInfoStatus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHalfScreenAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRealLandUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPsTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    return-wide v0
.end method

.method public getRequestType()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRetentionEndCardRatio()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    return v0
.end method

.method public getReturnPsTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    return-wide v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getRuCompliance()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v0

    return-object v0
.end method

.method public getShowArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    return-object v0
.end method

.method public getShowDate()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    return-wide v0
.end method

.method public getShowNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getShowReportTimeType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getShowSourceSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    return v0
.end method

.method public getSplashCountTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTableId()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    return v0
.end method

.method public getTrackUserClickArea()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    return v0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTriggerShowSpend()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    return v0
.end method

.method public getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ssp"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    return-object v0
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    return v0
.end method

.method public isAdmNormalClick()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public isAllowTrackingADClick()Z
    .locals 7

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-string v2, "ssp"

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v3, "click data error, allow tracking"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v3, "click the timestamp for more than 10 seconds, allow tracking"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloadAd()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isFromJs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    return v0
.end method

.method public isFromLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    return v0
.end method

.method public isH5Zip()Z
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public isHalfScreenAd()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJumpToHalfscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    return v0
.end method

.method public isOptimizeTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    return v0
.end method

.method public isPsAd()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isUpdateClickUrl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    return v0
.end method

.method public isVastDownloadSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    return v0
.end method

.method public isVastTypeAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    return v0
.end method

.method public judgeOptimizeTracking()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    return v0
.end method

.method public setACReady(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    return-void
.end method

.method public setActualShowRate(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    return-void
.end method

.method public setActualShowTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    return-void
.end method

.method public setAdClickTracking(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    :cond_0
    return-void
.end method

.method public setAdPsType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    return-void
.end method

.method public setAdRequestVer(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAutoRetentionTime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    return-void
.end method

.method public setBannerStyle(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    return-void
.end method

.method public setCalledUrlType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    return-void
.end method

.method public setCampaignname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    return-void
.end method

.method public setClickUrlTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    return-void
.end method

.method public setClick_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    return-void
.end method

.method public setClickid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    return-void
.end method

.method public setCloseDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    return-void
.end method

.method public setDeepLinkUrlFirst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAdSupportNetType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    return-void
.end method

.method public setDefaultMaterialType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    return-void
.end method

.method public setDownloadArea(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    return-void
.end method

.method public setEndCardType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFill_ts(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    return-void
.end method

.method public setFromJs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    return-void
.end method

.method public setFromLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    return-void
.end method

.method public setImageIsDownload(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    return-void
.end method

.method public setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-void
.end method

.method public setImpressionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    return-void
.end method

.method public setIndexLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    return-void
.end method

.method public setIsEffectiveShow(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    return-void
.end method

.method public setJsTriggerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    return-void
.end method

.method public setJumpToHalfscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    return-void
.end method

.method public setMatchVulgarBrand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    return-void
.end method

.method public setMaterialHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    return-void
.end method

.method public setMaterialWith(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    return-void
.end method

.method public setOfflineAdExpireTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    return-void
.end method

.method public setOfflineAdLaunchDateStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    return-void
.end method

.method public setOfflineAdStartDateLong(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    return-void
.end method

.method public setOmSdkVerifications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->setOmSdkVerifications(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setOptimizeTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    return-void
.end method

.method public setPreloadStatus(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    return-void
.end method

.method public setPslinkAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    return-void
.end method

.method public setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    return-void
.end method

.method public setRealLandUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    return-void
.end method

.method public setRequestPsTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    return-void
.end method

.method public setRetentionEndCardRatio(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    return-void
.end method

.method public setReturnPsTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    return-void
.end method

.method public setShowArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    return-void
.end method

.method public setShowDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    return-void
.end method

.method public setShowNum(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    return-void
.end method

.method public setShowReportTimeType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    return-void
.end method

.method public setShowSourceSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    return-void
.end method

.method public setSplashCountTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    return-void
.end method

.method public setTableId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    return-void
.end method

.method public setTrackUserClickArea(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    return-void
.end method

.method public setTriggerId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTriggerShowSpend(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    return-void
.end method

.method public setUpdateClickUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVastDownloadSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    return-void
.end method

.method public setVastTypeAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    return-void
.end method

.method public setVideoInfo(Lcom/cloud/hisavana/sdk/common/bean/VastData;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    return-void
.end method

.method public setViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdsDTO{impBeanRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adCreativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fill_ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", splashCountTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isACReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageIsDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", deepLinkUrlFirst=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actualShowTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actualShowRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showArea=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isEffectiveShow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showReportTimeType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adPsType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", calledUrlType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pslinkAppName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requestPsTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", returnPsTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", impressionUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickUrlTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", adSeatType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", viewJsonData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tableId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdStartDateLong="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdLaunchDateStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", offlineAdExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adRequestVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMatchVulgarBrand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromJs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoRetentionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowSourceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    const/4 v3, 0x2

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    :cond_5
    :goto_3
    int-to-byte v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    if-nez v0, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    if-nez v0, :cond_9

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    if-nez v0, :cond_a

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    if-nez v0, :cond_b

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_9

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    if-nez v0, :cond_c

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_a

    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    if-nez v0, :cond_d

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_b

    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_b
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showPsFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
