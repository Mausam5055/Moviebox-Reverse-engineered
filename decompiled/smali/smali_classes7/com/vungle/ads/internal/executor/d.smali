.class public final Lcom/vungle/ads/internal/executor/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/executor/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/executor/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/executor/d$a;

.field private static final IO_KEEP_ALIVE_TIME_SECONDS:I = 0x5

.field private static final JOBS_KEEP_ALIVE_TIME_SECONDS:I = 0x5

.field private static final SINGLE_CORE_POOL_SIZE:I = 0x1

.field private static final VUNGLE_KEEP_ALIVE_TIME_SECONDS:I = 0xa


# instance fields
.field private API_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private IO_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private final NUMBER_OF_CORES:I

.field private OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private UA_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/executor/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/executor/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/executor/d;->Companion:Lcom/vungle/ads/internal/executor/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    iput v3, p0, Lcom/vungle/ads/internal/executor/d;->NUMBER_OF_CORES:I

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_jr"

    invoke-direct {v8, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    move-object v1, v0

    move v2, v3

    move-object v6, v12

    invoke-direct/range {v1 .. v8}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_io"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x5

    move-object v4, v0

    move-object v9, v12

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->IO_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_api"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0xa

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->API_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_logger"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_background"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_ua"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->UA_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_down"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x4

    const-wide/16 v7, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    const-string v1, "vng_ol"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0xa

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public getApiExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->API_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public getBackgroundExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public getDownloaderExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public getIoExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->IO_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public getJobExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public getLoggerExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public getOffloadExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public getUaExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->UA_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method
