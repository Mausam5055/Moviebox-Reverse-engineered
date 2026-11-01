.class final Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/SoLoadService;->z()V
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
    c = "com.wecloud.load.lib.SoLoadService$scheduleCheckExit$1"
    f = "SoLoadService.kt"
    l = {
        0x22e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/wecloud/load/lib/SoLoadService;


# direct methods
.method constructor <init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wecloud/load/lib/SoLoadService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-direct {v0, v1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;-><init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v6, p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/o0;->g(Lkotlinx/coroutines/n0;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_1
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {p1}, Lcom/wecloud/load/lib/SoLoadService;->c(Lcom/wecloud/load/lib/SoLoadService;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/wecloud/load/lib/DySoLoadManager;->a:Lcom/wecloud/load/lib/DySoLoadManager;

    iget-object v3, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-virtual {v3}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "getApplication(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lcom/wecloud/load/lib/DySoLoadManager;->i(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {p1}, Lcom/wecloud/load/lib/SoLoadService;->p(Lcom/wecloud/load/lib/SoLoadService;)V

    goto :goto_1

    :cond_3
    const-string p1, "SoLoadManagerExample"

    const-string v3, "exitProcess \u4e3a false\uff0c\u7ee7\u7eed\u76d1\u63a7"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    :goto_1
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {p1}, Lcom/wecloud/load/lib/SoLoadService;->h(Lcom/wecloud/load/lib/SoLoadService;)J

    move-result-wide v3

    iput-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u76d1\u63a7\u4efb\u52a1\u5f02\u5e38: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, "SoLoadManagerExample"

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    goto :goto_0

    :catch_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SoLoadManagerExample"

    const-string v5, "\u76d1\u63a7\u4efb\u52a1\u88ab\u53d6\u6d88"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
