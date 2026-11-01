.class public Lcom/hisavana/adxlibrary/excuter/AdxNative;
.super Lcom/hisavana/common/base/BaseNative;


# instance fields
.field public a:Lz6/d;

.field public b:Lcom/hisavana/common/bean/AdNativeInfo;

.field public c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/bean/TAdNativeInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseNative;->getAdType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/bean/TAdNativeInfo;

    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getFilterSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getFilterSource()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getFilterSource()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_title"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ad_url"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string v5, "description"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    const-string v5, "image_url"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon_url"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "endcard_url"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_name"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "download_url"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "native_info_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->setTrackingBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->c()V

    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    :cond_0
    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxNative"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getNativeAd()Lz6/d;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    return-object v0
.end method

.method public initNative()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lz6/d;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lz6/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    invoke-virtual {v0, v1}, Lz6/d;->A(I)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La7/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxNative;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-static {}, Lb7/a;->a()Lb7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lb7/a$b;->a()Lb7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz6/a;->r(Lb7/a;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-virtual {v1, v0}, Lz6/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz6/a;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isOfflineAd()Z
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/bean/TAdNativeInfo;

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onNativeAdStartLoad()V
    .locals 5

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v0, v1}, Lb7/a;->k(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hisa-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lb7/a;->i(Z)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-virtual {v1, v0}, Lz6/a;->r(Lb7/a;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    invoke-virtual {v0, v1}, Lz6/a;->m(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    iget v1, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Lz6/d;->B(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lz6/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    invoke-virtual {v0, v1}, Lz6/a;->n(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    invoke-virtual {v0, v1}, Lz6/d;->C(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-virtual {v0}, Lz6/d;->w()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adx native load mPlacementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxNative"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    const-string v0, "AdxNative"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V

    :try_start_0
    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getSecondPrice()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p3, v2, v4

    if-eqz p3, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setSecondPrice(D)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-virtual {p3, p1, p2, v1}, Lz6/d;->y(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const p3, 0xc351

    invoke-direct {p2, p3, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "registerViewForInteraction error, mNativeAd is null"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setRecommendReqInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-void
.end method

.method public trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-virtual {v0, p1, p2}, Lz6/d;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public trackRecommendShow(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-virtual {v0, p1}, Lz6/d;->E(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    return-void
.end method
