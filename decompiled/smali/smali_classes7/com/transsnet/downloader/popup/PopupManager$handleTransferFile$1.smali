.class final Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/popup/PopupManager;->A(Landroid/content/Context;Lmy/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V
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
    c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1"
    f = "PopupManager.kt"
    l = {
        0x193,
        0x1df
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $checkTransferFailed:Z

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $info:Lmy/b;

.field final synthetic $loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/popup/PopupManager;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;ZLandroid/content/Context;Lmy/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/popup/PopupManager;",
            "Z",
            "Landroid/content/Context;",
            "Lmy/b;",
            "Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iput-boolean p2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    iput-object p3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    iput-object p5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iput-object p6, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lmy/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->l(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lmy/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->k(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->j(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->i(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final i(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;
    .locals 0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 p5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p7

    add-long/2addr p5, p7

    goto :goto_0

    :cond_0
    iput-wide p5, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    new-instance p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$2$2;

    const/4 p5, 0x0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$2$2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/coroutines/Continuation;)V

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p4, p0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final j(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;
    .locals 7

    if-eqz p7, :cond_1

    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide p0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 v0, 0x19000

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    invoke-virtual {p3}, Lmy/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    invoke-virtual {p3}, Lmy/b;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    new-instance p0, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class p7, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, p7}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p7, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    invoke-virtual {p7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p7

    const-string v0, "getName(...)"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p7, p0, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    new-instance p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p4, p0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    if-nez p7, :cond_2

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    new-instance p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move-object v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;-><init>(Lkotlin/jvm/functions/Function2;Lmy/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p4, p0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final k(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;
    .locals 10

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v9, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$4$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p1

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$4$1;-><init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JLcom/transsnet/downloader/popup/PopupManager;JLkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p0, v0

    move-object p3, v9

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lmy/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)Lkotlin/Unit;
    .locals 10

    new-instance v7, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    invoke-static {p0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v9, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$5$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move v3, p5

    move-object v4, p2

    move-object v5, p0

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$5$1;-><init>(Lkotlin/jvm/functions/Function2;ZLmy/b;Lcom/transsnet/downloader/popup/PopupManager;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p0, v0

    move-object p3, v9

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iget-boolean v2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    iget-object v5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-object v6, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;ZLandroid/content/Context;Lmy/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v12, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v13

    iget v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->label:I

    const/4 v1, 0x2

    const-string v14, "resource_save"

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v15, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v10, v1

    move-object v9, v2

    move-object v8, v3

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const-string v2, ", subjectId = "

    const/16 v3, 0xa

    if-ne v0, v3, :cond_e

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v1}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v4}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5267\u96c6\u8f6c\u5b58\u64cd\u4f5c, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1, v15}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v5}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v9

    if-ge v9, v3, :cond_3

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v6

    :goto_1
    add-long v9, v9, v16

    iput-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    :cond_5
    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v5}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v9

    if-ge v9, v3, :cond_6

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_3

    :cond_7
    move-wide/from16 v16, v6

    :goto_3
    add-long v9, v9, v16

    iput-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_2

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$1;

    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iget-boolean v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$1;-><init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v1

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save video, epse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isTransferFailed = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1, v15}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Llj/b;->a:Llj/b$a;

    invoke-virtual {v0}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object/from16 v16, v0

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v0, Llj/b;->a:Llj/b$a;

    invoke-virtual {v0}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_5

    :goto_6
    sget-object v17, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    iget-object v6, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v18, v15

    goto :goto_7

    :cond_c
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result v0

    move/from16 v18, v0

    :goto_7
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    invoke-virtual {v0}, Lmy/b;->b()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    invoke-virtual {v0}, Lmy/b;->e()I

    move-result v20

    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    new-instance v21, Lcom/transsnet/downloader/popup/m;

    move-object/from16 v0, v21

    move-object v1, v9

    move-object v2, v7

    move-object v3, v10

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/popup/m;-><init>(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;)V

    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v4, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-boolean v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    new-instance v22, Lcom/transsnet/downloader/popup/n;

    move-object/from16 v0, v22

    move/from16 v23, v1

    move-object v1, v10

    move-object/from16 v24, v2

    move-object v2, v8

    move-object/from16 v25, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v7

    move/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/popup/n;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)V

    iget-boolean v7, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    iput-object v8, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$0:Ljava/lang/Object;

    iput-object v9, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$1:Ljava/lang/Object;

    iput-object v10, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$2:Ljava/lang/Object;

    iput-object v11, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$3:Ljava/lang/Object;

    iput v15, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->label:I

    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v3, v24

    move-object/from16 v4, v16

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v17, v8

    move-object/from16 v8, v21

    move-object/from16 v18, v9

    move-object/from16 v9, v22

    move-object/from16 v19, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_d

    return-object v13

    :cond_d
    move-object/from16 v11, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_4

    :cond_e
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v3}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v4}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v5}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5355\u8d44\u6e90\u8f6c\u5b58\u64cd\u4f5c, name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",resourceId = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2, v15}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Llj/b;->a:Llj/b$a;

    invoke-virtual {v0}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v4, v0

    goto :goto_9

    :cond_f
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    sget-object v2, Llj/b;->a:Llj/b$a;

    invoke-virtual {v2}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    :cond_10
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_8

    :goto_9
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v0

    if-eqz v0, :cond_11

    move v5, v15

    goto :goto_a

    :cond_11
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result v0

    move v5, v0

    :goto_a
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {v3}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    iget-object v6, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    invoke-virtual {v6}, Lmy/b;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    invoke-virtual {v7}, Lmy/b;->e()I

    move-result v7

    iget-object v8, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-object v9, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    new-instance v10, Lcom/transsnet/downloader/popup/o;

    invoke-direct {v10, v8, v9}, Lcom/transsnet/downloader/popup/o;-><init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;)V

    iget-object v15, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v8, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    iget-object v9, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lmy/b;

    iget-boolean v11, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    iget-object v14, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    new-instance v20, Lcom/transsnet/downloader/popup/p;

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/transsnet/downloader/popup/p;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lmy/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;)V

    iget-boolean v11, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    iput v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->label:I

    const/4 v8, 0x0

    move-object v1, v2

    move v2, v8

    move-object v8, v10

    move-object/from16 v9, v20

    move v10, v11

    move-object/from16 v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_12

    return-object v13

    :cond_12
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
