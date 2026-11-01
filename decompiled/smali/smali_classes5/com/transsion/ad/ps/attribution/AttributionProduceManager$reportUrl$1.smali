.class final Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->n(Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V
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
    c = "com.transsion.ad.ps.attribution.AttributionProduceManager$reportUrl$1"
    f = "AttributionProduceManager.kt"
    l = {
        0x5a,
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

.field final synthetic $reportUrl:Ljava/lang/String;

.field final synthetic $type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/ps/model/RecommendInfo;",
            "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    iput-object p3, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

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

    new-instance p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;

    iget-object v0, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    iget-object v2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;-><init>(Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    invoke-virtual {p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    iget-object p1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    const-string v1, "http"

    const/4 v5, 0x0

    invoke-static {p1, v1, v5, v4, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    iget-object v6, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    iput v2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->label:I

    invoke-virtual {p1, v1, v5, v6, p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->h(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    iget-object v5, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput v4, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->label:I

    invoke-virtual {p1, v1, v2, v3, p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->g(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    invoke-virtual {p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
