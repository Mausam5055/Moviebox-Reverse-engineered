.class public final Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljavax/net/SocketFactory;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->a:J

    const-string v0, "ExoPlayerLib/2.17.1"

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->b:Ljava/lang/String;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->c:Ljavax/net/SocketFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->d(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->f(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;
    .locals 7

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/j0;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->a:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/j0;-><init>(J)V

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/l0;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->a:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/l0;-><init>(J)V

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->c:Ljavax/net/SocketFactory;

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->e:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;-><init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/source/rtsp/c$a;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V

    return-object v0
.end method

.method public e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public f(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    return-object p0
.end method
