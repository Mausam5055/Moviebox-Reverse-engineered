.class public final Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    new-instance v0, Lcom/transsnet/downloader/util/u;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/u;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Llj/n0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->q()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->t(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(ZIZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->o(ZIZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;Lmy/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->l(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;Lmy/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->k(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic f(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->m(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->p(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;)Llj/n0;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->r()Llj/n0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->s(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->u(I)V

    return-void
.end method

.method private final k(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    if-nez p3, :cond_0

    sget-object p3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    sget-object p2, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->v:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;->c()Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    move-result-object p2

    const-string v0, "download_anima"

    invoke-virtual {p2, p1, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/transsnet/downloader/util/w;

    invoke-direct {p1, p3, p4}, Lcom/transsnet/downloader/util/w;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->A0(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final l(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;Lmy/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {p2, p0}, Lcom/transsnet/downloader/util/DownloadUtil;->s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final m(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "3 delete, resourceId = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LocalVideoNotExistUtil"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    new-instance p2, Lcom/transsnet/downloader/util/x;

    invoke-direct {p2, p3, p4}, Lcom/transsnet/downloader/util/x;-><init>(ZI)V

    invoke-interface {p1, v0, p2}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$delete$2;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$delete$2;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method static synthetic n(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->m(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method private static final o(ZIZ)Lkotlin/Unit;
    .locals 7

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->u(I)V

    :cond_0
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

    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p2, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final p(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final q()Llj/n0;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->q1()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method private final r()Llj/n0;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/n0;

    return-object v0
.end method

.method private final s(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "LocalVideoNotExistUtil"

    const-string v6, "\u5408\u96c6\u5217\u8868, \u5c55\u793a\u8def\u5f84\u9009\u62e9\u5f39\u7a972"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    new-instance v2, Lcom/transsnet/downloader/util/v;

    invoke-direct {v2, p3, p2}, Lcom/transsnet/downloader/util/v;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->k(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final t(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 5

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/util/DownloadUtil;->s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5267\u96c6, \u672c\u5730\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u5f00\u59cb\u91cd\u65b0\u4e0b\u8f7d, resourceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "long_video_play"

    invoke-virtual {v1, v4, v2, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->p(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final u(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    sget-object p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method private final x(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 11

    new-instance v10, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, p4

    invoke-direct/range {v0 .. v9}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v2

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v3, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    new-instance v2, Lmy/e;

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-direct {v2, v3, v7}, Lmy/e;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lmy/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    move-object v0, p1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    move-object v2, v0

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v10, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;

    const/4 v9, 0x0

    move-object v1, v10

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, v0

    move-object p2, v3

    move-object p3, v4

    move-object p4, v10

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->x(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->x(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
