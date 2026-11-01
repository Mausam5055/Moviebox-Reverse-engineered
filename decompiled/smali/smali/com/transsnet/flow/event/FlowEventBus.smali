.class public final Lcom/transsnet/flow/event/FlowEventBus;
.super Landroidx/lifecycle/t0;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ5\u0010\u0011\u001a\u00020\u000f\"\u0008\u0008\u0000\u0010\u000c*\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JS\u0010\u001a\u001a\u00020\u0019\"\u0008\u0008\u0000\u0010\u000c*\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ>\u0010\u001c\u001a\u00020\u000f\"\u0008\u0008\u0000\u0010\u000c*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000eH\u0086@\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ%\u0010 \u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010$\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008$\u0010#J\u0015\u0010&\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008&\u0010\'R<\u0010*\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080(j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R<\u0010,\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080(j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsnet/flow/event/FlowEventBus;",
        "Landroidx/lifecycle/t0;",
        "<init>",
        "()V",
        "",
        "eventName",
        "",
        "isSticky",
        "Lkotlinx/coroutines/flow/x0;",
        "",
        "getEventFlow",
        "(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;",
        "T",
        "value",
        "Lkotlin/Function1;",
        "",
        "onReceived",
        "invokeReceived",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "Landroidx/lifecycle/u;",
        "lifecycleOwner",
        "Landroidx/lifecycle/Lifecycle$State;",
        "minState",
        "Lkotlinx/coroutines/i0;",
        "dispatcher",
        "Lkotlinx/coroutines/t1;",
        "observeEvent",
        "(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;",
        "observeWithoutLifecycle",
        "(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "timeMillis",
        "postEvent",
        "(Ljava/lang/String;Ljava/lang/Object;J)V",
        "removeStickEvent",
        "(Ljava/lang/String;)V",
        "clearStickEvent",
        "",
        "getEventObserverCount",
        "(Ljava/lang/String;)I",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "eventFlows",
        "Ljava/util/HashMap;",
        "stickyEventFlows",
        "FlowEvent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final eventFlows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/x0;",
            ">;"
        }
    .end annotation
.end field

.field private final stickyEventFlows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/x0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus;->eventFlows:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus;->stickyEventFlows:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getEventFlow(Lcom/transsnet/flow/event/FlowEventBus;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/flow/event/FlowEventBus;->getEventFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invokeReceived(Lcom/transsnet/flow/event/FlowEventBus;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/flow/event/FlowEventBus;->invokeReceived(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getEventFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlinx/coroutines/flow/x0;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus;->stickyEventFlows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/x0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus;->eventFlows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/x0;

    :goto_0
    if-nez v0, :cond_2

    const v0, 0x7fffffff

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, v1, v2}, Lkotlinx/coroutines/flow/d1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsnet/flow/event/FlowEventBus;->stickyEventFlows:Ljava/util/HashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/transsnet/flow/event/FlowEventBus;->eventFlows:Ljava/util/HashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final invokeReceived(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "null cannot be cast to non-null type T of com.transsnet.flow.event.FlowEventBus.invokeReceived"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    invoke-virtual {v0}, Lcom/transsnet/flow/event/b;->b()Lcom/transsnet/flow/event/c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error on message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/transsnet/flow/event/c;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    invoke-virtual {v0}, Lcom/transsnet/flow/event/b;->b()Lcom/transsnet/flow/event/c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class cast error on message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/transsnet/flow/event/c;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public final clearStickEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus;->stickyEventFlows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/x0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/flow/x0;->f()V

    :cond_0
    return-void
.end method

.method public final getEventObserverCount(Ljava/lang/String;)I
    .locals 3

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus;->stickyEventFlows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/x0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/x0;->c()Lkotlinx/coroutines/flow/i1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsnet/flow/event/FlowEventBus;->eventFlows:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/x0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/x0;->c()Lkotlinx/coroutines/flow/i1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/u;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlinx/coroutines/i0;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/t1;"
        }
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceived"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p5

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/transsnet/flow/event/FlowEventBus$observeEvent$1;-><init>(Lcom/transsnet/flow/event/FlowEventBus;Ljava/lang/String;ZLkotlinx/coroutines/i0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, v0}, Lcom/transsnet/flow/event/EventUtilsKt;->launchWhenStateAtLeast(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;

    move-result-object p1

    return-object p1
.end method

.method public final observeWithoutLifecycle(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;

    iget v1, v0, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;

    invoke-direct {v0, p0, p4}, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;-><init>(Lcom/transsnet/flow/event/FlowEventBus;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/transsnet/flow/event/FlowEventBus;->getEventFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;

    move-result-object p1

    new-instance p2, Lcom/transsnet/flow/event/FlowEventBus$a;

    invoke-direct {p2, p0, p3}, Lcom/transsnet/flow/event/FlowEventBus$a;-><init>(Lcom/transsnet/flow/event/FlowEventBus;Lkotlin/jvm/functions/Function1;)V

    iput v3, v0, Lcom/transsnet/flow/event/FlowEventBus$observeWithoutLifecycle$1;->label:I

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/c1;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final postEvent(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "eventName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    invoke-virtual {v2}, Lcom/transsnet/flow/event/b;->b()Lcom/transsnet/flow/event/c;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post Event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsnet/flow/event/c;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/transsnet/flow/event/FlowEventBus;->getEventFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Lcom/transsnet/flow/event/FlowEventBus;->getEventFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlinx/coroutines/flow/x0;

    aput-object v2, v3, v1

    aput-object p1, v3, v0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/flow/x0;

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v8, Lcom/transsnet/flow/event/FlowEventBus$postEvent$1$1;

    const/4 v6, 0x0

    move-object v1, v8

    move-wide v2, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsnet/flow/event/FlowEventBus$postEvent$1$1;-><init>(JLkotlinx/coroutines/flow/x0;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeStickEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus;->stickyEventFlows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
