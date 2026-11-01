.class public final Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/NativeSlideshowView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/NativeSlideshowView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->y(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V

    return-void
.end method

.method private static final y(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getVTop$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getVBottom$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getBottomNative$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$setBottomNative$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$postDelayedLoadAd(Lcom/transsion/wrapperad/view/NativeSlideshowView;Z)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v4, v3, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v3}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v7, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1;

    invoke-direct {v7, v0, v2, p1, v1}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1;-><init>(Landroid/content/Context;Lcom/transsion/wrapperad/view/NativeSlideshowView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    iget-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getMHandler$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    new-instance v2, Lcom/transsion/wrapperad/view/n;

    invoke-direct {v2, v0}, Lcom/transsion/wrapperad/view/n;-><init>(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->j(Lcom/transsion/wrapperad/view/NativeSlideshowView;ZILjava/lang/Object;)V

    return-void
.end method
