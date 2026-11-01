.class public Lcom/aliyun/loader/VodMediaLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mMainHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/aliyun/loader/VodMediaLoader;


# instance fields
.field private onLoadStatusListener:Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    const-class v0, Lcom/aliyun/loader/MediaLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/loader/VodMediaLoader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/loader/VodMediaLoader;->sInstance:Lcom/aliyun/loader/VodMediaLoader;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/aliyun/loader/VodMediaLoader;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/loader/VodMediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/loader/VodMediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    return-object p0
.end method

.method public static getInstance()Lcom/aliyun/loader/VodMediaLoader;
    .locals 2

    sget-object v0, Lcom/aliyun/loader/VodMediaLoader;->sInstance:Lcom/aliyun/loader/VodMediaLoader;

    if-nez v0, :cond_1

    const-class v0, Lcom/aliyun/loader/MediaLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aliyun/loader/VodMediaLoader;->sInstance:Lcom/aliyun/loader/VodMediaLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aliyun/loader/VodMediaLoader;

    invoke-direct {v1}, Lcom/aliyun/loader/VodMediaLoader;-><init>()V

    sput-object v1, Lcom/aliyun/loader/VodMediaLoader;->sInstance:Lcom/aliyun/loader/VodMediaLoader;

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
    sget-object v0, Lcom/aliyun/loader/VodMediaLoader;->sInstance:Lcom/aliyun/loader/VodMediaLoader;

    return-object v0
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private static native nCancel(Ljava/lang/String;I)V
.end method

.method private static native nLoad(Ljava/lang/String;IJ)V
.end method

.method private static nOnCanceled(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/loader/VodMediaLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aliyun/loader/VodMediaLoader$4;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/loader/VodMediaLoader$4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static nOnCompleted(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/loader/VodMediaLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aliyun/loader/VodMediaLoader$3;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/loader/VodMediaLoader$3;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static nOnError(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/loader/VodMediaLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aliyun/loader/VodMediaLoader$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aliyun/loader/VodMediaLoader$2;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static nOnPrepared(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/aliyun/loader/VodMediaLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aliyun/loader/VodMediaLoader$1;

    invoke-direct {v1, p0}, Lcom/aliyun/loader/VodMediaLoader$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native nPause(ZLjava/lang/String;I)V
.end method

.method private static native nPrepareAuth(Ljava/lang/Object;)V
.end method

.method private static native nPrepareSts(Ljava/lang/Object;)V
.end method

.method private static native nRemoveSource(Ljava/lang/String;)V
.end method


# virtual methods
.method public cancel(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/aliyun/loader/VodMediaLoader;->nCancel(Ljava/lang/String;I)V

    return-void
.end method

.method public load(Ljava/lang/String;IJ)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/aliyun/loader/VodMediaLoader;->nLoad(Ljava/lang/String;IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/aliyun/loader/VodMediaLoader;->nPause(ZLjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareVidSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 0

    invoke-static {p1}, Lcom/aliyun/loader/VodMediaLoader;->nPrepareAuth(Ljava/lang/Object;)V

    return-void
.end method

.method public prepareVidSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 0

    invoke-static {p1}, Lcom/aliyun/loader/VodMediaLoader;->nPrepareSts(Ljava/lang/Object;)V

    return-void
.end method

.method public removeVidSource(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/aliyun/loader/VodMediaLoader;->nRemoveSource(Ljava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/aliyun/loader/VodMediaLoader;->nPause(ZLjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnLoadStatusListener(Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/loader/VodMediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    return-void
.end method
