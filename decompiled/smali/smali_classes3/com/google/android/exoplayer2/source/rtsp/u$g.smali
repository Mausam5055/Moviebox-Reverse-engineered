.class final Lcom/google/android/exoplayer2/source/rtsp/u$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field final synthetic d:Lcom/google/android/exoplayer2/source/rtsp/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->a:Ljava/io/OutputStream;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayer:RtspMessageChannel:Sender"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->c:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/u$g;[BLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/u$g;->d([BLjava/util/List;)V

    return-void
.end method

.method private synthetic d([BLjava/util/List;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->d(Lcom/google/android/exoplayer2/source/rtsp/u;)Lcom/google/android/exoplayer2/source/rtsp/u$d;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/u$d;->b(Ljava/util/List;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->b:Landroid/os/HandlerThread;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/x;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/rtsp/x;-><init>(Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->a(Ljava/util/List;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$g;->c:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/w;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/w;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u$g;[BLjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
