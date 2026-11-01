.class Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->F(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Z)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->I(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/rtsp/d0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/d0;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->E(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;J)J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/d0;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->F(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Z)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/d0;->c()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->G(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Z)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->H(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Z)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->I(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V

    return-void
.end method
