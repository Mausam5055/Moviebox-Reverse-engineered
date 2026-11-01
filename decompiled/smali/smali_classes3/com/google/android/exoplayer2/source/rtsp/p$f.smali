.class final Lcom/google/android/exoplayer2/source/rtsp/p$f;
.super Ljava/lang/Object;

# interfaces
.implements Lt9/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/rtsp/p;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/p;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/p;->L(ILcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/p;->H(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->d(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->d(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p;->P(IJ)I

    move-result p1

    return p1
.end method
