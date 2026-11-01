.class final Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/n0;

.field final synthetic b:Lkotlinx/coroutines/i0;

.field final synthetic c:Lcom/transsnet/flow/event/FlowEventBus;

.field final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/n0;Lkotlinx/coroutines/i0;Lcom/transsnet/flow/event/FlowEventBus;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->a:Lkotlinx/coroutines/n0;

    iput-object p2, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->b:Lkotlinx/coroutines/i0;

    iput-object p3, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->c:Lcom/transsnet/flow/event/FlowEventBus;

    iput-object p4, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->a:Lkotlinx/coroutines/n0;

    iget-object v1, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->b:Lkotlinx/coroutines/i0;

    new-instance v3, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1$1;

    iget-object p2, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->c:Lcom/transsnet/flow/event/FlowEventBus;

    iget-object v2, p0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1;->d:Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p1, v2, v4}, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1$1$1;-><init>(Lcom/transsnet/flow/event/FlowEventBus;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
