.class public Lcom/cicada/player/utils/DecoderSurfaceTexture;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final CREATE_SURFACE_MSG:I = 0x3039


# instance fields
.field private mCountDown:Ljava/util/concurrent/CountDownLatch;

.field private mDecoderHandler:J

.field private mHandleThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DecoderSurfaceTexture"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$002(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/DecoderSurfaceTexture;)I
    .locals 0

    iget p0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    return p0
.end method

.method static synthetic access$202(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private native onFrameAvailable(J)V
.end method


# virtual methods
.method public createSurface(IJ)Landroid/view/Surface;
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iput p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    iput-wide p2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    :try_start_0
    new-instance p1, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;

    iget-object p2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;-><init>(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x3039

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_1
    iget-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method public dispose()V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public getTransformMatrix([F)V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-wide v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->onFrameAvailable(J)V

    return-void
.end method

.method public updateTexImage()V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
