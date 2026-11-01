.class public Lcom/cicada/player/utils/Logger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/Logger$OnLogCallback;,
        Lcom/cicada/player/utils/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "Logger"

.field private static sAppContext:Landroid/content/Context;

.field private static volatile sInstance:Lcom/cicada/player/utils/Logger;


# instance fields
.field private final logCallbackLock:Ljava/lang/Object;

.field private mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

.field private mEnableConsoleLog:Z

.field private mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    const/4 v0, 0x0

    sput-object v0, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    sput-object v0, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cicada/player/utils/Logger;->mEnableConsoleLog:Z

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    iput-object v0, p0, Lcom/cicada/player/utils/Logger;->mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

    return-void
.end method

.method private callback(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/cicada/player/utils/Logger$OnLogCallback;->onLog(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;
    .locals 3

    sget-object v0, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    if-nez v0, :cond_1

    const-class v0, Lcom/cicada/player/utils/Logger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/cicada/player/utils/Logger;

    invoke-direct {v1}, Lcom/cicada/player/utils/Logger;-><init>()V

    sput-object v1, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    sget-object v1, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-virtual {v1, v2}, Lcom/cicada/player/utils/Logger;->setLogLevel(Lcom/cicada/player/utils/Logger$LogLevel;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/cicada/player/utils/Logger;->sInstance:Lcom/cicada/player/utils/Logger;

    return-object p0
.end method

.method private static getLevel(I)Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 1

    if-eqz p0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0x10

    if-eq p0, v0, :cond_4

    const/16 v0, 0x18

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x38

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0

    :cond_0
    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0

    :cond_1
    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0

    :cond_4
    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0

    :cond_5
    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_FATAL:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0

    :cond_6
    sget-object p0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private static log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cicada/player/utils/Logger;->getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;

    move-result-object v0

    iget-object v0, v0, Lcom/cicada/player/utils/Logger;->mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

    sget-object v1, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cicada/player/utils/Logger;->getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cicada/player/utils/Logger;->mEnableConsoleLog:Z

    sget-object v2, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    if-eq v0, v2, :cond_5

    invoke-virtual {v0}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result v2

    if-lt v0, v2, :cond_5

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v0, :cond_1

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v0, :cond_4

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    if-ne p0, v0, :cond_5

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private static native nEnableConsoleLog(Z)V
.end method

.method private static native nGetLogLevel()I
.end method

.method private static nOnLogCallback(I[B)V
    .locals 1

    invoke-static {p0}, Lcom/cicada/player/utils/Logger;->getLevel(I)Lcom/cicada/player/utils/Logger$LogLevel;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/cicada/player/utils/Logger;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cicada/player/utils/Logger;->getInstance(Landroid/content/Context;)Lcom/cicada/player/utils/Logger;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->callback(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static native nSetLogLevel(I)V
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/cicada/player/utils/Logger;->log(Lcom/cicada/player/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableConsoleLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cicada/player/utils/Logger;->mEnableConsoleLog:Z

    invoke-static {p1}, Lcom/cicada/player/utils/Logger;->nEnableConsoleLog(Z)V

    return-void
.end method

.method public getLogCallback()Lcom/cicada/player/utils/Logger$OnLogCallback;
    .locals 2

    iget-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLogLevel()Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 1

    invoke-static {}, Lcom/cicada/player/utils/Logger;->nGetLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/cicada/player/utils/Logger$LogLevel;->convert(I)Lcom/cicada/player/utils/Logger$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public setLogCallback(Lcom/cicada/player/utils/Logger$OnLogCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/Logger;->logCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/cicada/player/utils/Logger;->mLogCallback:Lcom/cicada/player/utils/Logger$OnLogCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLogLevel(Lcom/cicada/player/utils/Logger$LogLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/Logger;->mCurrentLogLevel:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-virtual {p1}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result p1

    invoke-static {p1}, Lcom/cicada/player/utils/Logger;->nSetLogLevel(I)V

    return-void
.end method
