.class final Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->g(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.ps.attribution.BaseAttributionProvider$insert$2"
    f = "BaseAttributionProvider.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $psId:Ljava/lang/String;

.field final synthetic $reportUrl:Ljava/lang/String;

.field final synthetic $type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;


# direct methods
.method constructor <init>(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;

    iput-object p2, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$psId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$reportUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

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

    new-instance p1, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;

    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;

    iget-object v2, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$psId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$reportUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;-><init>(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;

    invoke-static {v2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->b(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;)Lcom/transsion/ad/db/pslink/a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    sub-long v14, v4, v6

    new-instance v4, Lcom/transsion/ad/db/pslink/AttributionPoint;

    iget-object v10, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$psId:Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$reportUrl:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v17}, Lcom/transsion/ad/db/pslink/AttributionPoint;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v3, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->label:I

    invoke-interface {v2, v4, v0}, Lcom/transsion/ad/db/pslink/a;->e(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
