.class public Lcom/aliyun/loader/MediaLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mMainHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/aliyun/loader/MediaLoader;


# instance fields
.field private onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    const-class v0, Lcom/aliyun/loader/MediaLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/loader/MediaLoader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/loader/MediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/loader/MediaLoader;)Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/loader/MediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    return-object p0
.end method

.method public static getInstance()Lcom/aliyun/loader/MediaLoader;
    .locals 2

    sget-object v0, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    if-nez v0, :cond_1

    const-class v0, Lcom/aliyun/loader/MediaLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aliyun/loader/MediaLoader;

    invoke-direct {v1}, Lcom/aliyun/loader/MediaLoader;-><init>()V

    sput-object v1, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

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
    sget-object v0, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    return-object v0
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private static native nCancel(Ljava/lang/String;)V
.end method

.method private static native nCancelAll()V
.end method

.method private static native nLoad(Ljava/lang/String;J)V
.end method

.method private static nOnCanceled(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aliyun/loader/MediaLoader$3;

    invoke-direct {v1, p0}, Lcom/aliyun/loader/MediaLoader$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static nOnCompleted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aliyun/loader/MediaLoader$2;

    invoke-direct {v1, p0}, Lcom/aliyun/loader/MediaLoader$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static nOnError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aliyun/loader/MediaLoader$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/loader/MediaLoader$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native nPause(ZLjava/lang/String;)V
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->nCancelAll()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/aliyun/loader/MediaLoader;->nCancel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public load(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/aliyun/loader/MediaLoader;->nLoad(Ljava/lang/String;J)V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/aliyun/loader/MediaLoader;->nPause(ZLjava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/aliyun/loader/MediaLoader;->nPause(ZLjava/lang/String;)V

    return-void
.end method

.method public setOnLoadStatusListener(Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/loader/MediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    return-void
.end method
