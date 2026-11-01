.class final Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->u(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.shorttv.ad.common.STCommonVideoAdHelper$showAd$1"
    f = "STCommonVideoAdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $closeCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rewardedCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$rewardedCallback:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$closeCallback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$activity:Landroid/app/Activity;

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

    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$rewardedCallback:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$closeCallback:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$activity:Landroid/app/Activity;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$rewardedCallback:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$closeCallback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$showAd$1;->$activity:Landroid/app/Activity;

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lur/a;->a:Lur/a;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trigger show ad"

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-virtual {v3, v4, v5, v6}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->n(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->i(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->c(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Q0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
