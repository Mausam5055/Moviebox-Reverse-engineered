.class final Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->s(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.shorttv.ad.common.STCommonNativeAdHelper$showAd$1"
    f = "STCommonNativeAdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $layoutProvider:Lcom/transsion/ad/bidding/base/r;

.field final synthetic $nativeAdView:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field final synthetic $showCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;",
            "Lcom/transsion/ad/bidding/base/r;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$showCallback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$nativeAdView:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p4, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$layoutProvider:Lcom/transsion/ad/bidding/base/r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->d(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    return-void
.end method

.method private static final d(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget v0, Lcom/transsion/shorttv/R$id;->ad_blur_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v1, "#E6000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    instance-of v2, v2, Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    instance-of p0, v0, Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_3

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    instance-of v3, v3, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    check-cast v2, Landroid/view/View;

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    instance-of p0, v2, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_7

    check-cast v2, Landroid/widget/FrameLayout;

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    if-eqz v0, :cond_b

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_9

    move-object v1, p0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    :cond_9
    if-nez v1, :cond_a

    return-void

    :cond_a
    const/4 p0, -0x1

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_b
    :goto_6
    return-void

    :goto_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$showCallback:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$nativeAdView:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v4, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$layoutProvider:Lcom/transsion/ad/bidding/base/r;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$showCallback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$nativeAdView:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$layoutProvider:Lcom/transsion/ad/bidding/base/r;

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lur/a;->a:Lur/a;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trigger show ad"

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5, v6}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->l(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->j(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->b(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    new-instance p1, Lcom/transsion/shorttv/ad/common/a;

    invoke-direct {p1, v1}, Lcom/transsion/shorttv/ad/common/a;-><init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$showAd$1;->$showCallback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
