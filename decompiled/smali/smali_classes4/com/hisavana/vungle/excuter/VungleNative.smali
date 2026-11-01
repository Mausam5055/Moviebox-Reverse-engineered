.class public final Lcom/hisavana/vungle/excuter/VungleNative;
.super Lcom/hisavana/common/base/BaseNative;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ3\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/hisavana/vungle/excuter/VungleNative;",
        "Lcom/hisavana/common/base/BaseNative;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "",
        "adType",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V",
        "",
        "c",
        "()V",
        "initNative",
        "onNativeAdStartLoad",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "",
        "Landroid/view/View;",
        "adContains",
        "Lcom/hisavana/common/bean/AdNativeInfo;",
        "nativeInfo",
        "registerViewForInteraction",
        "(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V",
        "unregisterView",
        "(Lcom/hisavana/common/bean/AdNativeInfo;)V",
        "destroyAd",
        "d",
        "Landroid/content/Context;",
        "Lcom/vungle/ads/NativeAd;",
        "e",
        "Lcom/vungle/ads/NativeAd;",
        "nativeAd",
        "f",
        "Lcom/hisavana/common/bean/AdNativeInfo;",
        "liftoff_release"
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
.field private final d:Landroid/content/Context;

.field private e:Lcom/vungle/ads/NativeAd;

.field private f:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    iput-object p1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/vungle/excuter/VungleNative;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hisavana/vungle/excuter/VungleNative;->d(Lcom/hisavana/vungle/excuter/VungleNative;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/vungle/excuter/VungleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static final synthetic access$getNativeInfo$p(Lcom/hisavana/vungle/excuter/VungleNative;)Lcom/hisavana/common/bean/AdNativeInfo;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->f:Lcom/hisavana/common/bean/AdNativeInfo;

    return-object p0
.end method

.method public static final synthetic access$mapNativeAd(Lcom/hisavana/vungle/excuter/VungleNative;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/vungle/excuter/VungleNative;->c()V

    return-void
.end method

.method public static final synthetic access$onAdShowError(Lcom/hisavana/vungle/excuter/VungleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method private final c()V
    .locals 4

    sget-object v0, Lcom/hisavana/vungle/util/VungleUtil;->INSTANCE:Lcom/hisavana/vungle/util/VungleUtil;

    iget-object v1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    iget v2, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/hisavana/vungle/util/VungleUtil;->getNativeInfo(Lcom/vungle/ads/NativeAd;IILcom/hisavana/vungle/excuter/VungleNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :goto_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    return-void
.end method

.method private static final d(Lcom/hisavana/vungle/excuter/VungleNative;Z)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Lcom/vungle/ads/a$a;->load$default(Lcom/vungle/ads/a;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->unregisterView()V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    :cond_1
    iput-object v1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    return-void
.end method

.method protected initNative()V
    .locals 4

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlacementId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/vungle/ads/NativeAd;

    iget-object v2, p0, Lcom/hisavana/vungle/excuter/VungleNative;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/NativeAd;->setAdOptionsPosition(I)V

    new-instance v1, Lcom/hisavana/vungle/excuter/VungleNative$initNative$2$1;

    invoke-direct {v1, p0}, Lcom/hisavana/vungle/excuter/VungleNative$initNative$2$1;-><init>(Lcom/hisavana/vungle/excuter/VungleNative;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    iput-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    return-void
.end method

.method protected onNativeAdStartLoad()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCodeSeatId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/vungle/check/ExistsCheck;->Companion:Lcom/hisavana/vungle/check/ExistsCheck$Companion;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getApplicationId(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lee/c;

    invoke-direct {v2, p0}, Lee/c;-><init>(Lcom/hisavana/vungle/excuter/VungleNative;)V

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/vungle/check/ExistsCheck$Companion;->initVungle(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 5
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

    iput-object p3, p0, Lcom/hisavana/vungle/excuter/VungleNative;->f:Lcom/hisavana/common/bean/AdNativeInfo;

    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const-string v1, "vungle_media_view"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/ui/view/MediaView;

    const-string v2, "vungle_icon_view"

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    if-eqz v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v3, v0, v1, v2, p2}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction(Landroid/widget/FrameLayout;Lcom/vungle/ads/internal/ui/view/MediaView;Landroid/widget/ImageView;Ljava/util/Collection;)V

    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->unregisterView()V

    :cond_0
    return-void
.end method
