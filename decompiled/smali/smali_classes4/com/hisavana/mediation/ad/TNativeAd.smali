.class public Lcom/hisavana/mediation/ad/TNativeAd;
.super Lce/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lce/b;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

.field public final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hisavana/mediation/ad/TAdNativeView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lce/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->A:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->B:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lbe/c;
    .locals 3

    invoke-virtual {p0}, Lce/b;->d()Lbe/i;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->A:I

    invoke-virtual {v0, v1}, Lbe/i;->b(I)V

    iget v1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->B:I

    invoke-virtual {v0, v1}, Lbe/i;->i(I)V

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->C:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    invoke-virtual {v0, v1}, Lbe/i;->d(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V

    new-instance v1, Lbe/n;

    iget-object v2, p0, Lce/b;->h:Lbe/t;

    invoke-direct {v1, p1, v0, v2}, Lbe/n;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;Lbe/t;)V

    return-object v1
.end method

.method public final a(Lcom/hisavana/common/bean/TAdErrorCode;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ad_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "cld_app_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lce/b;->a:Ljava/lang/String;

    const-string v1, "cld_code_seat_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p2, "ts"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_code"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackGetNativeInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 1
    .param p1    # Lcom/hisavana/mediation/ad/TAdNativeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/hisavana/mediation/ad/ViewBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hisavana/mediation/ad/TNativeAd;->bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;Ljava/lang/String;)V

    return-void
.end method

.method public bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/hisavana/mediation/ad/TAdNativeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/hisavana/mediation/ad/ViewBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    const-string v1, "TNativeAd"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "you should init first"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lce/b;->a(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    iget-boolean v0, p0, Lce/b;->q:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->isMatchVulgarBrand()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "nativeInfo is match vulgar"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CODE_SHOW_VULGAR:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lce/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {p0, p1}, Lce/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_1
    invoke-virtual {p2, p4}, Lcom/hisavana/common/bean/TAdNativeInfo;->setSceneToken(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lce/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/hisavana/common/bean/TAdNativeInfo;->setSceneId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getFillSource()I

    move-result v1

    const-string v2, "filling_source"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p4

    iget-object p4, p4, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v0, "is_contain_vulgar"

    iget-boolean v1, p0, Lce/b;->q:Z

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lce/b;->g()Lbe/c;

    move-result-object p4

    instance-of v0, p4, Lbe/n;

    if-eqz v0, :cond_3

    check-cast p4, Lbe/n;

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {p4, p2, v0}, Lbe/n;->r0(Lcom/hisavana/common/bean/TAdNativeInfo;Lbe/t;)V

    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    iget-object p2, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearCurrentAd()V
    .locals 0

    invoke-super {p0}, Lce/b;->clearCurrentAd()V

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-super {p0}, Lce/b;->destroy()V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/mediation/ad/TAdNativeView;

    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getNativeAdInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lce/b;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_TIME_OUT:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Lce/b;->setCodeSeatType(I)V

    invoke-virtual {p0, v0}, Lce/b;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lce/b;->g()Lbe/c;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_4
    invoke-virtual {v2}, Lbe/c;->V()I

    move-result v3

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/hisavana/mediation/ad/TNativeAd;->c(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v4, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    check-cast v2, Lbe/n;

    iget-boolean v5, p0, Lce/b;->q:Z

    invoke-virtual {v2, v3, v0, v4, v5}, Lbe/n;->q0(IIZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_TRIGGER_SHOW_ONLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_RIGGER_SHOW_OFFLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TNativeAd"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getNativeInfoSize()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lce/b;->setCodeSeatType(I)V

    invoke-virtual {p0}, Lce/b;->g()Lbe/c;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v2}, Lbe/c;->V()I

    move-result v3

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/hisavana/mediation/ad/TNativeAd;->c(I)I

    move-result v4

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    check-cast v2, Lbe/n;

    iget-boolean v4, p0, Lce/b;->q:Z

    invoke-virtual {v2, v3, v1, v0, v4}, Lbe/n;->q0(IIZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return v0
.end method

.method public setAdMobPosition(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->A:I

    return-void
.end method

.method public setAdmobMediaAspectRatio(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->B:I

    return-void
.end method

.method public setRecommendReqInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->C:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-void
.end method
