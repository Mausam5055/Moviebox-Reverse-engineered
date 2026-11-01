.class final Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->x(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V
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
    c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$showErrorDialog$1"
    f = "LocalVideoNotExistUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $contextI:Landroid/content/Context;

.field final synthetic $isSeries:Z

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $seriesCollection:Z

.field final synthetic $seriesCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $seriesPosition:I

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$contextI:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollection:Z

    iput-object p3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$resourceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollectionList:Ljava/util/List;

    iput-object p5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$path:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$isSeries:Z

    iput p7, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesPosition:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->g(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->h(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;
    .locals 10

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p0, :cond_3

    if-eqz v2, :cond_7

    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    sget-object v2, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    move p3, v6

    move p4, v5

    move-object p5, v1

    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->f(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move/from16 v4, p6

    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->n(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v3, Lnh/m;->a:Lnh/m;

    invoke-virtual {v3}, Lnh/m;->e()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    if-eqz p0, :cond_6

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "LocalVideoNotExistUtil"

    const-string v5, "\u5408\u96c6\u5217\u8868, \u5c55\u793a\u8def\u5f84\u9009\u62e9\u5f39\u7a97"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v3, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-static {v3, p1, p2, p3}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->i(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "LocalVideoNotExistUtil"

    const-string v6, "\u5355\u8d44\u6e90, \u5c55\u793a\u8def\u5f84\u9009\u62e9\u5f39\u7a97"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    new-instance v3, Lcom/transsnet/downloader/util/z;

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct {v3, p2, p4, p5, v6}, Lcom/transsnet/downloader/util/z;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const/4 v4, 0x0

    invoke-static {v2, p1, p2, v4, v3}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->e(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    :cond_7
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final h(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;
    .locals 3

    sget-object p4, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5355\u8d44\u6e90, \u672c\u5730\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u5f00\u59cb\u91cd\u65b0\u4e0b\u8f7d, resourceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cpath ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "long_video_play"

    invoke-virtual {p4, v2, v0, v1}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p4, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-static {p4, p0, p1, p2, p3}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->g(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZI)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;

    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$contextI:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollection:Z

    iget-object v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$resourceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollectionList:Ljava/util/List;

    iget-object v5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$path:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$isSeries:Z

    iget v7, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesPosition:I

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/transsnet/downloader/dialog/LocalFileErrorDialog;

    invoke-direct {p1}, Lcom/transsnet/downloader/dialog/LocalFileErrorDialog;-><init>()V

    iget-object v8, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$contextI:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollection:Z

    iget-object v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$resourceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollectionList:Ljava/util/List;

    iget-object v5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$path:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$isSeries:Z

    iget v7, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesPosition:I

    new-instance v9, Lcom/transsnet/downloader/util/y;

    move-object v0, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/util/y;-><init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZI)V

    invoke-virtual {p1, v9}, Lcom/transsnet/downloader/dialog/LocalFileErrorDialog;->v0(Lkotlin/jvm/functions/Function1;)V

    const-string v0, "LocalFileErrorDialog"

    invoke-virtual {p1, v8, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
