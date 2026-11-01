.class public abstract Lo00/b;
.super Ljava/io/InputStream;


# instance fields
.field private final a:[B

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lo00/b;->a:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo00/b;->b:J

    return-void
.end method


# virtual methods
.method protected b(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lo00/b;->h(J)V

    return-void
.end method

.method protected h(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lo00/b;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo00/b;->b:J

    :cond_0
    return-void
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lo00/b;->b:J

    return-wide v0
.end method

.method protected l(J)V
    .locals 2

    iget-wide v0, p0, Lo00/b;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lo00/b;->b:J

    return-void
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Lo00/b;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo00/b;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method
