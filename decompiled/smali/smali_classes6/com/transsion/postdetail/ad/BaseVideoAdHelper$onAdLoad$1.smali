.class final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Z0(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
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
    c = "com.transsion.postdetail.ad.BaseVideoAdHelper$onAdLoad$1"
    f = "BaseVideoAdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper;",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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

    new-instance p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "VideoEndBidScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "VerticalPauseScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "VideoStartBidScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {p1, v1, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F1(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "LandscapePauseSceneNew"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76db9d51 -> :sswitch_3
        -0x462e08a -> :sswitch_2
        0x1526f06c -> :sswitch_1
        0x7a28f02f -> :sswitch_0
    .end sparse-switch
.end method
