.class public final Lcom/transsnet/downloader/core/thread/DownloadExecutor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/core/thread/DownloadExecutor$BackgroundThread;,
        Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

.field private static final b:Lkotlin/Lazy;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/concurrent/BlockingQueue;

.field private static final g:Ljava/util/concurrent/ThreadFactory;

.field private static h:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsnet/downloader/core/thread/c;

    invoke-direct {v1}, Lcom/transsnet/downloader/core/thread/c;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->b:Lkotlin/Lazy;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->c:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v2

    sput v2, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->d:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    sput v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor$a;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$a;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->g:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->d:I

    sget v2, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->g:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const-wide/16 v3, 0x14

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v9, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static synthetic a()Lcom/transsnet/downloader/core/thread/DownloadExecutor;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;-><init>()V

    return-object v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->d:I

    return v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->b:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
