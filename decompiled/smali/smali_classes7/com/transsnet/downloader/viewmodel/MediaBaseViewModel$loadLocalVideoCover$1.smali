.class final Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->g()V
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
    c = "com.transsnet.downloader.viewmodel.MediaBaseViewModel$loadLocalVideoCover$1"
    f = "MediaBaseViewModel.kt"
    l = {
        0x5b,
        0x5f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;-><init>(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->label:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v1

    move-object v1, p1

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v9, v1

    move-object v10, v2

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsnet/downloader/viewmodel/j0;

    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/transsnet/downloader/viewmodel/a0;->m(Lcom/transsnet/downloader/viewmodel/j0;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, ""

    if-nez v4, :cond_4

    move-object v4, v5

    :cond_4
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/transsnet/downloader/viewmodel/a0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/transsnet/downloader/viewmodel/a0;->w(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_1
    iput-object v9, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    iput-object v10, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    iput-object v11, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    iput v8, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->label:I

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v12, 0x0

    move-object v1, v2

    move-object v2, v5

    move-object v4, p0

    move v5, v6

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->F(Lcom/transsnet/downloader/manager/DownloadEsHelper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v3, v9

    move-object v2, v10

    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v11}, Lcom/transsion/baselib/db/download/DownloadBean;->setCover(Ljava/lang/String;)V

    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v4

    iput-object v3, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    iput v7, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->label:I

    invoke-virtual {v4, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    invoke-static {v3}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->b(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;)Landroidx/lifecycle/b0;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_8
    move-object v10, v2

    move-object v9, v3

    goto :goto_0

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->f()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoCover --> it = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
