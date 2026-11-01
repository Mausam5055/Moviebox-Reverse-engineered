.class public final Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;
.super Lcom/hisavana/common/base/BaseVideo;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;",
        "Lcom/hisavana/common/base/BaseVideo;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V",
        "",
        "initVideo",
        "()V",
        "onVideoStartLoad",
        "Landroid/app/Activity;",
        "activity",
        "onVideoShow",
        "(Landroid/app/Activity;)V",
        "",
        "isLoaded",
        "()Z",
        "isExpired",
        "canShow",
        "destroyAd",
        "isAdxAd",
        "isEwAd",
        "isInternalAd",
        "a",
        "Lcom/hisavana/common/bean/Network;",
        "",
        "b",
        "Ljava/lang/String;",
        "tag",
        "Lz6/c;",
        "c",
        "Lz6/c;",
        "rewarded",
        "ssp_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/hisavana/common/bean/Network;

.field public final b:Ljava/lang/String;

.field public c:Lz6/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    iput-object p2, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->a:Lcom/hisavana/common/bean/Network;

    const-string p1, "AdxInterstitialRewarded"

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$adClosed(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static final synthetic access$getRewarded$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Lz6/c;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    return-object p0
.end method

.method public static final synthetic access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$onReward(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->onReward()V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lz6/a;->d()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->canShow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canShow failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public destroyAd()V
    .locals 4

    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initVideo()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->a:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    new-instance v1, Lz6/c;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getCodeSeatId(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lz6/c;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    invoke-static {}, Lb7/a;->a()Lb7/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lb7/a$b;->a()Lb7/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lz6/a;->r(Lb7/a;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;

    invoke-direct {v1, p0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)V

    invoke-virtual {v0, v1}, Lz6/e;->t(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideo failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isAdxAd()Z
    .locals 2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEwAd()Z
    .locals 2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExpired()Z
    .locals 7

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x45b

    :try_start_0
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lz6/a;->d()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExpired failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    :goto_2
    return v1
.end method

.method public isInternalAd()Z
    .locals 2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->j()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onVideoShow(Landroid/app/Activity;)V
    .locals 4

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lz6/a;->h()Lb7/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lb7/a;->h(D)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lz6/a;->r(Lb7/a;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lz6/e;->u()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    :cond_3
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    const-string v1, "rewarded ad or listener is null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onVideoStartLoad()V
    .locals 5

    const-string v0, "hisa-"

    :try_start_0
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->c:Lz6/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lz6/a;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lz6/a;->h()Lb7/a;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v2, v3}, Lb7/a;->k(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb7/a;->l(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb7/a;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lb7/a;->i(Z)V

    invoke-virtual {v1, v2}, Lz6/a;->r(Lb7/a;)V

    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    invoke-virtual {v1, v0}, Lz6/a;->m(Z)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    invoke-virtual {v1, v0, v2, v3}, Lz6/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lz6/c;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoStartLoad failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_2
    :goto_1
    return-void
.end method
