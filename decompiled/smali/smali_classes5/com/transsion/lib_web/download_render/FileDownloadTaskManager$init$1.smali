.class final Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->j(Landroid/app/Application;ZZZLhj/j;Ljava/lang/String;)V
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
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.lib_web.download_render.FileDownloadTaskManager$init$1"
    f = "FileDownloadTaskManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $api:Lhj/j;

.field final synthetic $athenaIsDebug:Z

.field final synthetic $context:Landroid/app/Application;

.field final synthetic $path:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Application;ZLhj/j;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            "Z",
            "Lhj/j;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    iput-boolean p3, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$athenaIsDebug:Z

    iput-object p4, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$api:Lhj/j;

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

    new-instance p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    iget-boolean v3, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$athenaIsDebug:Z

    iget-object v4, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$api:Lhj/j;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;-><init>(Ljava/lang/String;Landroid/app/Application;ZLhj/j;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_0
    sget-object p1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->l(Ljava/lang/String;)V

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    iget-boolean v3, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$athenaIsDebug:Z

    iget-object v4, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$api:Lhj/j;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string p1, "getPackageName(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xc0

    const/4 v11, 0x0

    const/16 v6, 0x921

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Lhj/i;->l(Lhj/i;Landroid/app/Application;ZLhj/j;Ljava/lang/String;IZLjava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/lib_web/download_render/init/ConfigTask;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/ConfigTask;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/lib_web/download_render/init/d;

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/transsion/lib_web/download_render/init/d;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/lib_web/download_render/init/e;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/e;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/lib_web/download_render/init/a;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/a;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/lib_web/download_render/init/b;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/b;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/lib_web/download_render/init/c;

    invoke-interface {v0}, Lcom/transsion/lib_web/download_render/init/c;->invoke()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lgm/i;->a:Lgm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<init> fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DR_FileDownloadTaskManager"

    invoke-virtual {v0, v1, p1}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
