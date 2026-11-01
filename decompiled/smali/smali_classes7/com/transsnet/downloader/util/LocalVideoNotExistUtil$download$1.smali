.class final Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->p(Ljava/lang/String;Ljava/lang/String;ZI)V
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
    c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$download$1"
    f = "LocalVideoNotExistUtil.kt"
    l = {
        0xa3,
        0xb6,
        0xc9
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isSeries:Z

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $seriesPosition:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$isSeries:Z

    iput p4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$seriesPosition:I

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

    new-instance p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;

    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$isSeries:Z

    iget v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$seriesPosition:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2 download, resourceId = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "LocalVideoNotExistUtil"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    iput v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result v7

    const-string v8, "getApp(...)"

    const/16 v9, 0x1d

    if-eq v7, v5, :cond_6

    if-eq v7, v3, :cond_5

    goto :goto_1

    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_7

    sget-object v7, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9, p1}, Lcom/transsnet/downloader/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_7

    sget-object v7, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9, p1}, Lcom/transsnet/downloader/y;->e(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_7
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    sget-object p1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->H(Lcom/transsion/baselib/db/download/DownloadBean;)V

    sget-object p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-static {p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->h(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;)Llj/n0;

    move-result-object p1

    iput-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    invoke-interface {p1, v6, p0}, Llj/n0;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "LocalVideoNotExistUtil"

    const-string v8, "2 download, \u52a0\u5165\u4e0b\u8f7d\u961f\u5217"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result p1

    if-eq p1, v4, :cond_c

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-gt p1, v4, :cond_9

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result p1

    if-ne p1, v5, :cond_9

    sget-object p1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    sget-object p1, Llj/b;->a:Llj/b$a;

    invoke-virtual {p1}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object p1

    :cond_a
    move-object v5, p1

    sget-object p1, Llj/b;->a:Llj/b$a;

    invoke-virtual {p1}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    move-object p1, v2

    :goto_3
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    :cond_c
    :goto_4
    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_d
    iget-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    if-eqz p1, :cond_e

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_e
    iput-object v2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_f

    return-object v0

    :cond_f
    :goto_5
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LocalVideoNotExistUtil"

    const-string v3, "2 download, \u5237\u65b0\u5217\u8868"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$isSeries:Z

    if-eqz p1, :cond_10

    sget-object p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    iget v0, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$seriesPosition:I

    invoke-static {p1, v0}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->j(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;I)V

    :cond_10
    new-instance p1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
