.class final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->B(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/ui/LongVodUiType;Lcom/transsion/player/longvideo/intercept/d;)V
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
    c = "com.transsion.player.longvideo.intercept.PlaybackInterceptionManager$loadLandPauseAd$1$1"
    f = "PlaybackInterceptionManager.kt"
    l = {
        0x1ed
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $bean:Lgo/a;

.field final synthetic $compatActivity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $startView:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;",
            "Lgo/a;",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$compatActivity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$bean:Lgo/a;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$startView:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$compatActivity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$bean:Lgo/a;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$startView:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$compatActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    new-instance v4, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    invoke-direct {v4}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;-><init>()V

    invoke-static {v1, v4}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->u(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "LandscapePauseSceneNew"

    invoke-virtual {v1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_4
    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v4, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    iget-object v5, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$bean:Lgo/a;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v4, v3}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->M0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_6
    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_7
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->$startView:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-direct {v1, v3, v4}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_8
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v3

    if-eqz v3, :cond_9

    iput v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->w0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
