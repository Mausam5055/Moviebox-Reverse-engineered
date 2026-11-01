.class final Lcom/google/android/exoplayer2/source/rtsp/j0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/c$a;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/j0;->a:J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/source/rtsp/c;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/i0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/j0;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/i0;-><init>(J)V

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/k;->a(I)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/i0;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    return-object v0
.end method

.method public synthetic b()Lcom/google/android/exoplayer2/source/rtsp/c$a;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/b;->a(Lcom/google/android/exoplayer2/source/rtsp/c$a;)Lcom/google/android/exoplayer2/source/rtsp/c$a;

    move-result-object v0

    return-object v0
.end method
