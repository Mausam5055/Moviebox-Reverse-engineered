.class public final Lcom/transsnet/downloader/manager/DownloadStatusIconManager;
.super Ljava/lang/Object;

# interfaces
.implements Lny/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Ljava/util/List;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->h:Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;

    new-instance v0, Lcom/transsnet/downloader/manager/q;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/q;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->i:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsnet/downloader/manager/r;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/r;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->a:Lkotlin/Lazy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_download_done_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->g:Z

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->q()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsnet/downloader/manager/g;->n(Lny/b;)V

    return-void
.end method

.method public static synthetic b()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->p()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsnet/downloader/manager/DownloadStatusIconManager;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->s()Lcom/transsnet/downloader/manager/DownloadStatusIconManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->d:I

    return p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->c:I

    return p0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->i:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic g(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->e:I

    return p0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->f:I

    return p0
.end method

.method public static final synthetic i(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->g:Z

    return p0
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->t(II)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->d:I

    return-void
.end method

.method public static final synthetic l(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->c:I

    return-void
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->e:I

    return-void
.end method

.method public static final synthetic n(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->f:I

    return-void
.end method

.method private static final p()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final q()Lcom/transsnet/downloader/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private static final s()Lcom/transsnet/downloader/manager/DownloadStatusIconManager;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;-><init>()V

    return-object v0
.end method

.method private final t(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lny/e;

    invoke-interface {v1, p1, p2}, Lny/e;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->t(II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsnet/downloader/callback/DownloadTaskStat;)V
    .locals 7

    const-string v0, "downloadTaskStat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$onChange$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$onChange$1;-><init>(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;Lcom/transsnet/downloader/callback/DownloadTaskStat;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final o(Lny/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->q()Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->E()V

    return-void
.end method

.method public final r()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$initDownloadUnreadList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$initDownloadUnreadList$1;-><init>(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final v(Lny/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final w(Z)V
    .locals 2

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_download_done_status"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iput-boolean p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->g:Z

    return-void
.end method
