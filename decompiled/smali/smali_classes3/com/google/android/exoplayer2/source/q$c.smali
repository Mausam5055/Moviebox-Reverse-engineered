.class final Lcom/google/android/exoplayer2/source/q$c;
.super Ljava/lang/Object;

# interfaces
.implements Lt9/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lt9/s;

.field private final b:J


# direct methods
.method public constructor <init>(Lt9/s;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lt9/s;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/q$c;->b:J

    return-void
.end method


# virtual methods
.method public a()Lt9/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lt9/s;

    return-object v0
.end method

.method public c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lt9/s;

    invoke-interface {v0, p1, p2, p3}, Lt9/s;->c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/q$c;->b:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    :cond_0
    return p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lt9/s;

    invoke-interface {v0}, Lt9/s;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lt9/s;

    invoke-interface {v0}, Lt9/s;->maybeThrowError()V

    return-void
.end method

.method public skipData(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lt9/s;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/q$c;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lt9/s;->skipData(J)I

    move-result p1

    return p1
.end method
