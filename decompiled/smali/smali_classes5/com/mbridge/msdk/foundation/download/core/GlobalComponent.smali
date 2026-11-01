.class public final Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;
.super Ljava/lang/Object;


# static fields
.field private static volatile INSTANCE:Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;


# instance fields
.field private byteBufferSize:I

.field private config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

.field private context:Landroid/content/Context;

.field private databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

.field private databaseTableName:Ljava/lang/String;

.field private logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

.field private volatile okHttpClient:Lcom/mbridge/msdk/thrid/okhttp/t;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->byteBufferSize:I

    const-string v0, "download_record"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseTableName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    return-object v0
.end method


# virtual methods
.method public getByteBufferSize()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->byteBufferSize:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDatabaseHelper()Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    return-object v0
.end method

.method public getDatabaseTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent$1;-><init>(Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    return-object v0
.end method

.method public getOkHttpClient()Lcom/mbridge/msdk/thrid/okhttp/t;
    .locals 10

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->okHttpClient:Lcom/mbridge/msdk/thrid/okhttp/t;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v2, "OkHttp Dispatcher"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/l;

    invoke-direct {v2, v1}, Lcom/mbridge/msdk/thrid/okhttp/l;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequests()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/thrid/okhttp/l;->a(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequestsPerHost()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/thrid/okhttp/l;->b(I)V

    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/t$b;

    invoke-direct {v1}, Lcom/mbridge/msdk/thrid/okhttp/t$b;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultConnectTimeout()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->b(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v1

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultConnectTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v1

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultWriteTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Lcom/mbridge/msdk/thrid/okhttp/l;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultPingInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v5}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Z)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/h;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0x20

    const-wide/16 v5, 0x5

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/mbridge/msdk/thrid/okhttp/h;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Lcom/mbridge/msdk/thrid/okhttp/h;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Ljava/util/List;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a()Lcom/mbridge/msdk/thrid/okhttp/t;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->okHttpClient:Lcom/mbridge/msdk/thrid/okhttp/t;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->okHttpClient:Lcom/mbridge/msdk/thrid/okhttp/t;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->config:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHelper()Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHelper()Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent$2;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent$2;-><init>(Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    :goto_0
    return-void
.end method
