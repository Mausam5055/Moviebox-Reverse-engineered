.class final Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;
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
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "T",
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/lang/Void;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.event.FlowEventBus$observeEvent$1"
    f = "FlowEventBus.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dispatcher:Lkotlinx/coroutines/i0;

.field final synthetic $eventName:Ljava/lang/String;

.field final synthetic $isSticky:Z

.field final synthetic $onReceived:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/event/FlowEventBus;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/event/FlowEventBus;Ljava/lang/String;ZLkotlinx/coroutines/i0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/event/FlowEventBus;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->this$0:Lcom/tn/tranpay/event/FlowEventBus;

    iput-object p2, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$eventName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$isSticky:Z

    iput-object p4, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$dispatcher:Lkotlinx/coroutines/i0;

    iput-object p5, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$onReceived:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;

    iget-object v1, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->this$0:Lcom/tn/tranpay/event/FlowEventBus;

    iget-object v2, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$eventName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$isSticky:Z

    iget-object v4, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$dispatcher:Lkotlinx/coroutines/i0;

    iget-object v5, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$onReceived:Lkotlin/jvm/functions/Function1;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;-><init>(Lcom/tn/tranpay/event/FlowEventBus;Ljava/lang/String;ZLkotlinx/coroutines/i0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v1, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->this$0:Lcom/tn/tranpay/event/FlowEventBus;

    iget-object v3, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$eventName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$isSticky:Z

    invoke-static {v1, v3, v4}, Lcom/tn/tranpay/event/FlowEventBus;->access$getEventFlow(Lcom/tn/tranpay/event/FlowEventBus;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;

    move-result-object v1

    new-instance v3, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;

    iget-object v4, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$dispatcher:Lkotlinx/coroutines/i0;

    iget-object v5, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->this$0:Lcom/tn/tranpay/event/FlowEventBus;

    iget-object v6, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->$onReceived:Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;-><init>(Lkotlinx/coroutines/n0;Lkotlinx/coroutines/i0;Lcom/tn/tranpay/event/FlowEventBus;Lkotlin/jvm/functions/Function1;)V

    iput v2, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->label:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/c1;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
