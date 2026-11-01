.class public Lcom/cicada/player/utils/VsyncTimer;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VsyncTimer"

.field private static WHAT_DESTROY:I = 0x2713

.field private static WHAT_INIT:I = 0x2710

.field private static WHAT_PAUSE:I = 0x2712

.field private static WHAT_START:I = 0x2711


# instance fields
.field private final lockObj:Ljava/lang/Object;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mNativePtr:J

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    new-instance v0, Lcom/cicada/player/utils/VsyncTimer$1;

    invoke-direct {v0, p0}, Lcom/cicada/player/utils/VsyncTimer$1;-><init>(Lcom/cicada/player/utils/VsyncTimer;)V

    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iput-wide p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/cicada/player/utils/VsyncTimer;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/cicada/player/utils/VsyncTimer$2;

    iget-object p2, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/cicada/player/utils/VsyncTimer$2;-><init>(Lcom/cicada/player/utils/VsyncTimer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget p2, Lcom/cicada/player/utils/VsyncTimer;->WHAT_INIT:I

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/VsyncTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/cicada/player/utils/VsyncTimer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/VsyncTimer;JJ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cicada/player/utils/VsyncTimer;->onVsync(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/cicada/player/utils/VsyncTimer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_INIT:I

    return v0
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/VsyncTimer;J)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->onInit(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_START:I

    return v0
.end method

.method static synthetic access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    iget-object p0, p0, Lcom/cicada/player/utils/VsyncTimer;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_PAUSE:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_DESTROY:I

    return v0
.end method

.method static synthetic access$800(Lcom/cicada/player/utils/VsyncTimer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->onDestroy(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/cicada/player/utils/VsyncTimer;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private native onDestroy(J)V
.end method

.method private native onInit(J)I
.end method

.method private native onVsync(JJ)I
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget v2, Lcom/cicada/player/utils/VsyncTimer;->WHAT_DESTROY:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget v1, Lcom/cicada/player/utils/VsyncTimer;->WHAT_PAUSE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    sget v1, Lcom/cicada/player/utils/VsyncTimer;->WHAT_START:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
