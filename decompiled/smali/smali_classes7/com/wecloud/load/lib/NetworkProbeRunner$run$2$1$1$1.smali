.class final Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/wecloud/load/lib/n;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lcom/wecloud/load/lib/n;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lcom/wecloud/load/lib/n;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.wecloud.load.lib.NetworkProbeRunner$run$2$1$1$1"
    f = "NetworkProbeRunner.kt"
    l = {
        0x116,
        0x56
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

.field final synthetic $semaphore:Lkotlinx/coroutines/sync/h;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/h;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/h;",
            "Lcom/wecloud/load/lib/NetworkProbeRunner$Link;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$semaphore:Lkotlinx/coroutines/sync/h;

    iput-object p2, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;

    iget-object v0, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$semaphore:Lkotlinx/coroutines/sync/h;

    iget-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

    invoke-direct {p1, v0, v1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;-><init>(Lkotlinx/coroutines/sync/h;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/wecloud/load/lib/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/h;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

    iget-object v3, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/h;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$semaphore:Lkotlinx/coroutines/sync/h;

    iget-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->$link:Lcom/wecloud/load/lib/NetworkProbeRunner$Link;

    iput-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/sync/h;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    :try_start_1
    sget-object v3, Lcom/wecloud/load/lib/NetworkProbeRunner;->a:Lcom/wecloud/load/lib/NetworkProbeRunner;

    iput-object p1, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2$1$1$1;->label:I

    invoke-static {v3, v1, p0}, Lcom/wecloud/load/lib/NetworkProbeRunner;->c(Lcom/wecloud/load/lib/NetworkProbeRunner;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    check-cast p1, Lcom/wecloud/load/lib/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Lkotlinx/coroutines/sync/h;->release()V

    return-object p1

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_2
    invoke-interface {v0}, Lkotlinx/coroutines/sync/h;->release()V

    throw p1
.end method
