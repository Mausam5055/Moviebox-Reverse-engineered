.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.super Landroid/app/Service;


# static fields
.field private static final d:Lcom/amazonaws/logging/Log;

.field static e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;


# instance fields
.field a:Z

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z

    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, p3, [Ljava/lang/Object;

    aput-object v0, v2, p1

    const-string v0, "network status: %s\n"

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v2, v3, p1

    const-string v2, "# of active transfers: %d\n"

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    iget-object v5, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-wide v6, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, p1

    aput-object v4, v7, p3

    aput-object v5, v7, v1

    const/4 v3, 0x3

    aput-object v6, v7, v3

    const/4 v3, 0x4

    aput-object v2, v7, v3

    const-string v2, "bucket: %s, key: %s, status: %s, total size: %d, current: %d\n"

    invoke-virtual {p2, v2, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t bind to TransferService"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "Starting Transfer Service to listen for network connectivity changes."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v1

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "Registering the network receiver"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "Ignoring the leak in registering the receiver."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "Ignoring the exception trying to register the receiver for connectivity change."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "Moving the service out of the Foreground state."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in moving the service out of the foreground state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :try_start_3
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "De-registering the network receiver."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "Exception trying to de-register the network receiver"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    :goto_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/Notification;

    if-eqz p2, :cond_0

    const-string p3, "ongoing-notification-id"

    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    const-string p3, "remove-notification"

    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Z

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string p3, "Putting the service in Foreground state."

    invoke-interface {p1, p3}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "No notification is passed in the intent. Unable to transition to foreground."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in moving the service to foreground state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    monitor-enter p0

    :try_start_3
    iget-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    :try_start_4
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Registering the network receiver"

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    :try_start_5
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Ignoring the leak in registering the receiver."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Ignoring the exception trying to register the receiver for connectivity change."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    :cond_2
    :goto_3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
