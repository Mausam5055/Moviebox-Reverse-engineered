.class public final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->e:Landroid/content/Context;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getClassTag(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> listener --> onBiddingError() --> p0 = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$onComplete(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->getBinding()Lho/m;

    move-result-object v0

    iget-object v0, v0, Lho/m;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->e:Landroid/content/Context;

    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_2

    return-void

    :cond_2
    sget-object v4, Lcy/b;->a:Lcy/b;

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getLandAd$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    invoke-virtual {v4, v0, v5}, Lcy/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->getBinding()Lho/m;

    move-result-object v4

    iget-object v4, v4, Lho/m;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getLandAd$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v5

    invoke-virtual {v4, v5, v0, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lcom/transsion/player/longvideo/ui/LongVodUiType;->PORTRAIT:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    invoke-virtual {v2, p1, v3}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->onUiTypeChanged(Lcom/transsion/player/longvideo/ui/LongVodUiType;Lho/j;)V

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getLandAd$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v3

    :goto_3
    const-string v0, "VideoStartBidScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_8

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getLandAd$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    move-object p1, v3

    :goto_4
    const-string v4, "VideoEndBidScene"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getLandAd$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string p1, "VerticalPauseScene"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->getBinding()Lho/m;

    move-result-object p1

    iget-object p1, p1, Lho/m;->c:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->getBinding()Lho/m;

    move-result-object p1

    iget-object p1, p1, Lho/m;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->getBinding()Lho/m;

    move-result-object p1

    iget-object p1, p1, Lho/m;->c:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->getBinding()Lho/m;

    move-result-object p1

    iget-object p1, p1, Lho/m;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$startBubbleTipAnimation(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)V

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getLandAd$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    :cond_9
    const-string p1, ""

    :cond_a
    invoke-static {v2, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$adShowCountDown(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Ljava/lang/String;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getClassTag(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> listener --> onBiddingWrapperAdClick()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSceneId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "VideoStartBidScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$onComplete(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)V

    :cond_1
    return-void
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v4, v0, p1, v2, v3}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getClassTag(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> listener --> onBiddingWrapperAdShowError()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$onComplete(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)V

    return-void
.end method
