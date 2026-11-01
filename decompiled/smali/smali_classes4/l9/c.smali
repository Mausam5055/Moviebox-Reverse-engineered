.class final Ll9/c;
.super Lg9/w;


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(Lg9/m;J)V
    .locals 2

    invoke-direct {p0, p1}, Lg9/w;-><init>(Lg9/m;)V

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p2, p0, Ll9/c;->b:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 4

    invoke-super {p0}, Lg9/w;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Ll9/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    invoke-super {p0}, Lg9/w;->getPeekPosition()J

    move-result-wide v0

    iget-wide v2, p0, Ll9/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    invoke-super {p0}, Lg9/w;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Ll9/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
