.class public Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;
.super Ljava/lang/Object;


# instance fields
.field private bannerAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private iconAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private psAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rewardedAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private splashAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/Long;

.field private zipUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBannerAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->bannerAds:Ljava/util/List;

    return-object v0
.end method

.method public getIconAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->iconAds:Ljava/util/List;

    return-object v0
.end method

.method public getInterstitialAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->interstitialAds:Ljava/util/List;

    return-object v0
.end method

.method public getNativeAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->nativeAds:Ljava/util/List;

    return-object v0
.end method

.method public getPsAppInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->psAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getRewardedAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->rewardedAds:Ljava/util/List;

    return-object v0
.end method

.method public getSplashAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->splashAds:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->version:Ljava/lang/Long;

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

.method public setVersion(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->version:Ljava/lang/Long;

    return-void
.end method
