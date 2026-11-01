.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final d:Lcom/amazonaws/logging/Log;

.field private static e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;


# instance fields
.field final a:Landroid/net/ConnectivityManager;

.field private b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->g()V

    return-void
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->f()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 3

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;

    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 2

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized f()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    new-array v2, v1, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v3, v2, v0

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    const-string v4, "Loading transfers from database..."

    invoke-interface {v3, v4}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v5, v6, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->o(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_id"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->d(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;-><init>(I)V

    invoke-virtual {v5, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->j(Landroid/database/Cursor;)V

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v6, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    add-int/2addr v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    const-string v2, "Closing the cursor for resumeAllTransfers"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->d(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->f()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in resuming the transfers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " transfers are loaded from database."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :goto_3
    if-eqz v4, :cond_4

    :try_start_5
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    const-string v2, "Closing the cursor for resumeAllTransfers"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method


# virtual methods
.method e()Z
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Network connectivity changed detected."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
