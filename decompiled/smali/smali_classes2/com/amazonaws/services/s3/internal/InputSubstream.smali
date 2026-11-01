.class public final Lcom/amazonaws/services/s3/internal/InputSubstream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;


# instance fields
.field private a:J

.field private final b:J

.field private final c:J

.field private final d:Z

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->e:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->c:J

    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->b:J

    iput-boolean p6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->d:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->c:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->c:J

    add-long/2addr v4, v2

    sub-long v0, v4, v0

    :goto_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->e:J

    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public read()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazonaws/services/s3/internal/InputSubstream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v0

    :cond_0
    aget-byte v0, v1, v2

    return v0
.end method

.method public read([BII)I
    .locals 6

    :goto_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Lcom/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->c:J

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    int-to-long v0, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    iget-wide p2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->e:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->a:J

    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
