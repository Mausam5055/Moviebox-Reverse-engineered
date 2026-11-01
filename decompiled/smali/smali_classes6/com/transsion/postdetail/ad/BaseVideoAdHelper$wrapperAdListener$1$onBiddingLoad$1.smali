.class final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
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
    c = "com.transsion.postdetail.ad.BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1"
    f = "BaseVideoAdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper;",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$callback:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$sceneId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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

    new-instance p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$callback:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$callback:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
