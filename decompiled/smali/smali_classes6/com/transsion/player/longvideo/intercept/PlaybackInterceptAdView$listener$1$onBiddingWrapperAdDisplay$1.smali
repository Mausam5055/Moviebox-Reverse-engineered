.class final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
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
    c = "com.transsion.player.longvideo.intercept.PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1"
    f = "PlaybackInterceptAdView.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lgo/a;

    iget-object v4, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v6, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getLongVdPlayerBean$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lgo/a;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v6, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v5, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v4, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->$context:Landroid/content/Context;

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v6}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getPlaybackRecordDao(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object v8

    invoke-virtual {v2}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lgo/a;->l()I

    move-result v10

    invoke-virtual {v2}, Lgo/a;->e()I

    move-result v11

    iput-object v6, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$4:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1;->label:I

    invoke-interface {v8, v9, v10, v11, v0}, Lcom/transsion/baselib/db/video/PlaybackRecordDao;->a(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    :goto_0
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_3

    new-instance v1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    invoke-virtual {v4}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lgo/a;->l()I

    move-result v10

    invoke-virtual {v4}, Lgo/a;->e()I

    move-result v11

    const/16 v17, 0x38

    const/16 v18, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v18}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;-><init>(Ljava/lang/String;IIJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSceneId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    const-string v4, "VideoStartBidScene"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    instance-of v3, v5, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_5

    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_2

    :cond_5
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_9

    invoke-static {v5}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v8

    if-eqz v8, :cond_9

    new-instance v11, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$1;

    invoke-direct {v11, v2, v7, v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_5

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSceneId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v1

    :goto_3
    const-string v4, "VideoEndBidScene"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, v5, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_8

    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_4

    :cond_8
    move-object v5, v1

    :goto_4
    if-eqz v5, :cond_9

    invoke-static {v5}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v8

    if-eqz v8, :cond_9

    new-instance v11, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2;

    invoke-direct {v11, v2, v7, v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_9
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
