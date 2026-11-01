.class public final Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    new-instance v0, Lcom/transsnet/downloader/ugc/util/a;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/util/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/ugc/util/b;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/util/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/ugc/util/c;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/util/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/ugc/util/d;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/util/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->e:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->p()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->o()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljj/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->i()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->j()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Ljj/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->k()Ljj/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->l()Lcom/transsnet/downloader/manager/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IAudioApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->m()Lcom/transsion/room/api/IAudioApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsion/room/api/IFloatingApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->n()Lcom/transsion/room/api/IFloatingApi;

    move-result-object p0

    return-object p0
.end method

.method private static final i()Ljj/a;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method private static final j()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final k()Ljj/a;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj/a;

    return-object v0
.end method

.method private final l()Lcom/transsnet/downloader/manager/g;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private final m()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final n()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private static final o()Lcom/transsion/room/api/IAudioApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IAudioApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private static final p()Lcom/transsion/room/api/IFloatingApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private final q(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p1, v0}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final r(Landroid/view/View;Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 11

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "pageName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "bean"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p3, p1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->q(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void

    :cond_2
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoIsVertical()Z

    move-result p3

    const/4 v1, 0x2

    const-string v2, "ops"

    const-string v3, "collection_id"

    const-string v4, "id"

    if-nez p3, :cond_4

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Llg/a;->a:Llg/a$a;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "UGCVideoOpen"

    const-string v7, "openUGCLocalVideoDetail other"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p3, "/ugc_video/local_detail"

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v4, "resource_id"

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v2, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string p4, "page_from"

    invoke-virtual {p3, p4, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-static {p2, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v5, Llg/a;->a:Llg/a$a;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "UGCVideoOpen"

    const-string v7, "openUGCLocalVideoDetail vertical video~"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p2, "/ugc_video/detail"

    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    sget-object p3, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    move-result-object p3

    const-string p4, "videoStyle"

    invoke-virtual {p2, p4, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-static {p2, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method
