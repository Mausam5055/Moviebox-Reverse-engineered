.class public Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;,
        Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;,
        Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field abTest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation
.end field

.field adChoiceClickUrl:Ljava/lang/String;

.field adChoiceImageUrl:Ljava/lang/String;

.field adChoiceLegalText:Ljava/lang/String;

.field adCreativeId:Ljava/lang/String;

.field adGroupId:Ljava/lang/String;

.field adLaunchTypes:Ljava/lang/Integer;

.field adm:Ljava/lang/String;

.field advSeatType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field advertiserId:Ljava/lang/String;

.field advrId:Ljava/lang/String;

.field protected appInfo:Ljava/lang/String;

.field applicationTitle:Ljava/lang/String;

.field auctionSecondPrice:Ljava/lang/Double;

.field bidPrice:Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cacheTime:Ljava/lang/Integer;

.field clickTrackingUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clickUrl:Ljava/lang/String;

.field commissionRatio:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cost:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field creativeId:Ljava/lang/String;

.field deepLinkUrl:Ljava/lang/String;

.field dspType:Ljava/lang/Integer;

.field protected ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

.field extInfo:Ljava/lang/String;

.field firstPrice:Ljava/lang/Double;

.field fullScreenFlag:Ljava/lang/Integer;

.field groupId:Ljava/lang/String;

.field id:Ljava/lang/Integer;

.field imageHeight:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageWidth:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field industryId:Ljava/lang/String;

.field isAdxAscribeRetryEnable:Ljava/lang/Boolean;

.field isInteractiveAd:Z

.field materialStyle:Ljava/lang/String;

.field materialType:Ljava/lang/Integer;

.field nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

.field offlineAdLaunchDate:Ljava/lang/Long;

.field offlineAdStartDate:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field planId:Ljava/lang/String;

.field planIdStr:Ljava/lang/String;

.field planType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field preloadEnable:Ljava/lang/Boolean;

.field psApplicationTitle:Ljava/lang/String;

.field psClickTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field psLink:Ljava/lang/String;

.field psPackageName:Ljava/lang/String;

.field protected pullNewestLive:Ljava/lang/Integer;

.field rewardDuration:Ljava/lang/Integer;

.field rtbAdm:Ljava/lang/String;

.field scale:Ljava/lang/String;

.field scales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field secondPrice:Ljava/lang/Double;

.field settlementRatio:Ljava/lang/String;

.field showTime:Ljava/lang/Integer;

.field showTrackingSecretKey:Ljava/lang/String;

.field showTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field storeDeeplink:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field testResponse:Ljava/lang/Boolean;

.field trackType:Ljava/lang/Integer;

.field viewJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$1;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_2

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_4

    :cond_3
    if-ne v2, v1, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_5

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_6

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_7

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_8

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_9

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_a

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_b

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_c

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    goto :goto_c

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_d

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    sget-object v2, Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_e

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_f

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    goto :goto_f

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    :goto_f
    const-class v2, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_10

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    goto :goto_10

    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_11

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    goto :goto_11

    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_12

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    goto :goto_12

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    :goto_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_13

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    goto :goto_13

    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_14

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    goto :goto_14

    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_15

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    goto :goto_15

    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_16

    move-object v2, v3

    goto :goto_17

    :cond_16
    if-ne v2, v1, :cond_17

    move v2, v1

    goto :goto_16

    :cond_17
    move v2, v0

    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_17
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_18

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    goto :goto_18

    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    :goto_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_19

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    goto :goto_19

    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    :goto_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1a

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    goto :goto_1a

    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1b

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    goto :goto_1b

    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    :goto_1b
    const-class v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v1

    goto :goto_1c

    :cond_1c
    move v2, v0

    :goto_1c
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1d

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    goto :goto_1d

    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    :goto_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1e

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    goto :goto_1e

    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    :goto_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1f

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    goto :goto_1f

    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-nez p1, :cond_20

    goto :goto_20

    :cond_20
    if-ne p1, v1, :cond_21

    move v0, v1

    :cond_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_20
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->preloadEnable:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbTest()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    return-object v0
.end method

.method public getAdChoiceClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdChoiceImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdChoiceLegalText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdCreativeId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public getAdGroupId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public getAdImageHeight()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getAdImageWidth()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getAdImgUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getInteractiveUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getAdLaunchTypes()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

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

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public getAdxAscribeRetryEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAppInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionSecondPrice()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getClickTrackingUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

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

.method public getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFirstPrice()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getFullScreenFlag()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

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

.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

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

.method public getImageHeight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

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

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getImageWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

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

.method public getIndustryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInstallApk()I
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/i0;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/i0;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x2

    return v0

    :catch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getInteractiveUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getInteractiveUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMaterialStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMaterialType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    return-object v0
.end method

.method public getNewPrice()Ljava/lang/String;
    .locals 5

    const-string v0, "&"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_first_price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_second_price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_ratio="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "ssp_second_price"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*----> AdsDTO getNewPrice() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdsDTO getNewPrice() error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getNewPrice_Click()Ljava/lang/String;
    .locals 5

    const-string v0, "&"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "p2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "t="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "ssp_second_price"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*----> AdsDTO getNewPrice_Click() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdsDTO getNewPrice_Click() error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getOfflineAdLaunchDate()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getOfflineAdStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPlanId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public getPlanType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPreloadEnable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->preloadEnable:Ljava/lang/Boolean;

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

.method public getPsApplicationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPsClickTrackingUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPsLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPsPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPullNewestLive()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

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

.method public getRewardDuration()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRtbAdm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rtbAdm:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    return-object v0
.end method

.method public getScales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    return-object v0
.end method

.method public getSecondPrice()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getSettlementRatio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getShowTrackingSecretKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getShowTrackingUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStoreDeeplink()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTestResponse()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

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

.method public getTrackType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    return-object v0
.end method

.method public isInteractiveAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    return v0
.end method

.method public isOfflineAd()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdLaunchTypes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAbTest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    return-void
.end method

.method public setAdChoiceClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    return-void
.end method

.method public setAdChoiceImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setAdChoiceLegalText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    return-void
.end method

.method public setAdCreativeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    return-void
.end method

.method public setAdGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    return-void
.end method

.method public setAdLaunchTypes(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    return-void
.end method

.method public setAdm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    return-void
.end method

.method public setAdvSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAdvertiserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    return-void
.end method

.method public setAdvrId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    return-void
.end method

.method public setAdxAscribeRetryEnable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public setAppInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    return-void
.end method

.method public setApplicationTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    return-void
.end method

.method public setAuctionSecondPrice(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    return-void
.end method

.method public setCacheTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    return-void
.end method

.method public setClickTrackingUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    return-void
.end method

.method public setExt(Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setFirstPrice(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    return-void
.end method

.method public setFullScreenFlag(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setImageHeight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageWidth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    return-void
.end method

.method public setIndustryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

    return-void
.end method

.method public setInteractiveAd()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getInteractiveUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    :cond_0
    return-void
.end method

.method public setMaterialStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    return-void
.end method

.method public setMaterialType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    return-void
.end method

.method public setNativeObject(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    return-void
.end method

.method public setOfflineAdLaunchDate(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    return-void
.end method

.method public setOfflineAdStartDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPlanId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    return-void
.end method

.method public setPlanIdStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    return-void
.end method

.method public setPlanType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    return-void
.end method

.method public setPsApplicationTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    return-void
.end method

.method public setPsClickTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public setPsLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    return-void
.end method

.method public setPsPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPullNewestLive(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    return-void
.end method

.method public setRewardDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    return-void
.end method

.method public setRtbAdm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rtbAdm:Ljava/lang/String;

    return-void
.end method

.method public setScale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    return-void
.end method

.method public setScales(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    return-void
.end method

.method public setSecondPrice(D)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new secondPrice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "old secondPrice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp_second_price"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getSecondPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public setSettlementRatio(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    return-void
.end method

.method public setShowTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    return-void
.end method

.method public setShowTrackingSecretKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    return-void
.end method

.method public setShowTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public setStoreDeeplink(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    return-void
.end method

.method public setTestResponse(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

    return-void
.end method

.method public setTrackType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    return-void
.end method

.method public setViewJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    const/4 v3, 0x2

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_7

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_8

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_9

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    if-nez v0, :cond_b

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_a

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    if-nez v0, :cond_c

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_b

    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_b
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    if-nez v0, :cond_d

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_c

    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    if-nez v0, :cond_e

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_d

    :cond_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    if-nez v0, :cond_f

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_e

    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    if-nez v0, :cond_10

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_f

    :cond_10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_f
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    if-nez v0, :cond_11

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_10

    :cond_11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_10
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    if-nez v0, :cond_12

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_11

    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    if-nez v0, :cond_13

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_12

    :cond_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    if-nez v0, :cond_14

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_13

    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    if-nez v0, :cond_15

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_14

    :cond_15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    :goto_14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_15

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_15

    :cond_17
    move v0, v3

    :goto_15
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    if-nez v0, :cond_18

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_16

    :cond_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    if-nez v0, :cond_19

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_17

    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    if-nez v0, :cond_1a

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_18

    :cond_1a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    if-nez v0, :cond_1b

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_19

    :cond_1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    if-nez p2, :cond_1c

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1a

    :cond_1c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    if-nez p2, :cond_1d

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1b

    :cond_1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    if-nez p2, :cond_1e

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1c

    :cond_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->preloadEnable:Ljava/lang/Boolean;

    if-nez p2, :cond_1f

    move v1, v2

    goto :goto_1d

    :cond_1f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_1d

    :cond_20
    move v1, v3

    :goto_1d
    int-to-byte p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
