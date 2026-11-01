.class public abstract Lba/n;
.super Lcom/google/android/exoplayer2/decoder/f;

# interfaces
.implements Lba/i;


# instance fields
.field private d:Lba/i;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lba/n;->d:Lba/i;

    return-void
.end method

.method public getCues(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lba/n;->d:Lba/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/i;

    iget-wide v1, p0, Lba/n;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lba/i;->getCues(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .locals 4

    iget-object v0, p0, Lba/n;->d:Lba/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/i;

    invoke-interface {v0, p1}, Lba/i;->getEventTime(I)J

    move-result-wide v0

    iget-wide v2, p0, Lba/n;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    iget-object v0, p0, Lba/n;->d:Lba/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/i;

    invoke-interface {v0}, Lba/i;->getEventTimeCount()I

    move-result v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    iget-object v0, p0, Lba/n;->d:Lba/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/i;

    iget-wide v1, p0, Lba/n;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lba/i;->getNextEventTimeIndex(J)I

    move-result p1

    return p1
.end method

.method public m(JLba/i;J)V
    .locals 2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/decoder/f;->b:J

    iput-object p3, p0, Lba/n;->d:Lba/i;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p4

    :goto_0
    iput-wide p1, p0, Lba/n;->e:J

    return-void
.end method
