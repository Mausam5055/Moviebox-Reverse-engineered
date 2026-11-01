.class public final Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$destroy(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$getCallback$p(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)Lcom/transsion/player/longvideo/intercept/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/longvideo/intercept/d;->a()V

    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->d:Landroid/content/Context;

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$getRewardedAdManager$p(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$destroy(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)V

    return-void
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$getVideoDetailPlayBean$p(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->d:Landroid/content/Context;

    iget-object v3, v0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    instance-of v4, v2, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v9, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1;

    invoke-direct {v9, v3, v1, v5}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1;-><init>(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    sget-object v12, Llg/a;->a:Llg/a$a;

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$getClassTag(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onBiddingWrapperAdRewarded() --> \u83b7\u53d6\u6fc0\u52b1 --> \u56de\u8c03\u51fa\u53bb"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "premium_p"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$getCallback$p(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)Lcom/transsion/player/longvideo/intercept/d;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/transsion/player/longvideo/intercept/d;->d()V

    :cond_2
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$destroy(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;->e:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->access$getCallback$p(Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;)Lcom/transsion/player/longvideo/intercept/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/longvideo/intercept/d;->a()V

    :cond_0
    return-void
.end method
