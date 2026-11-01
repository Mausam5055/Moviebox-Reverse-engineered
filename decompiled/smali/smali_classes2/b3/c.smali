.class public final Lb3/c;
.super Lu2/c;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Landroidx/media3/common/util/i0;

.field private c:Landroidx/media3/common/util/p0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lu2/c;-><init>()V

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Lb3/c;->a:Landroidx/media3/common/util/j0;

    new-instance v0, Landroidx/media3/common/util/i0;

    invoke-direct {v0}, Landroidx/media3/common/util/i0;-><init>()V

    iput-object v0, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    return-void
.end method


# virtual methods
.method protected b(Lu2/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/x;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lb3/c;->c:Landroidx/media3/common/util/p0;

    if-eqz v2, :cond_0

    iget-wide v3, p1, Lu2/b;->i:J

    invoke-virtual {v2}, Landroidx/media3/common/util/p0;->f()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Landroidx/media3/common/util/p0;

    iget-wide v3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-direct {v2, v3, v4}, Landroidx/media3/common/util/p0;-><init>(J)V

    iput-object v2, p0, Lb3/c;->c:Landroidx/media3/common/util/p0;

    iget-wide v3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iget-wide v5, p1, Lu2/b;->i:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/p0;->a(J)J

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    iget-object v2, p0, Lb3/c;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v2, p1, p2}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object v2, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v2, p1, p2}, Landroidx/media3/common/util/i0;->o([BI)V

    iget-object p1, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object p1, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    int-to-long p1, p1

    const/16 v2, 0x20

    shl-long/2addr p1, v2

    iget-object v3, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr p1, v2

    iget-object v2, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v2, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    iget-object v3, p0, Lb3/c;->b:Landroidx/media3/common/util/i0;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    iget-object v4, p0, Lb3/c;->a:Landroidx/media3/common/util/j0;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/j0;->X(I)V

    if-eqz v3, :cond_6

    const/16 v4, 0xff

    if-eq v3, v4, :cond_5

    const/4 v2, 0x4

    if-eq v3, v2, :cond_4

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    const/4 v2, 0x6

    if-eq v3, v2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lb3/c;->a:Landroidx/media3/common/util/j0;

    iget-object v3, p0, Lb3/c;->c:Landroidx/media3/common/util/p0;

    invoke-static {v2, p1, p2, v3}, Lb3/g;->b(Landroidx/media3/common/util/j0;JLandroidx/media3/common/util/p0;)Lb3/g;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lb3/c;->a:Landroidx/media3/common/util/j0;

    iget-object v3, p0, Lb3/c;->c:Landroidx/media3/common/util/p0;

    invoke-static {v2, p1, p2, v3}, Lb3/d;->b(Landroidx/media3/common/util/j0;JLandroidx/media3/common/util/p0;)Lb3/d;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lb3/c;->a:Landroidx/media3/common/util/j0;

    invoke-static {p1}, Lb3/f;->b(Landroidx/media3/common/util/j0;)Lb3/f;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lb3/c;->a:Landroidx/media3/common/util/j0;

    invoke-static {v3, v2, p1, p2}, Lb3/a;->b(Landroidx/media3/common/util/j0;IJ)Lb3/a;

    move-result-object p1

    goto :goto_0

    :cond_6
    new-instance p1, Lb3/e;

    invoke-direct {p1}, Lb3/e;-><init>()V

    :goto_0
    if-nez p1, :cond_7

    new-instance p1, Landroidx/media3/common/x;

    new-array p2, v0, [Landroidx/media3/common/x$a;

    invoke-direct {p1, p2}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    goto :goto_1

    :cond_7
    new-instance p2, Landroidx/media3/common/x;

    new-array v1, v1, [Landroidx/media3/common/x$a;

    aput-object p1, v1, v0

    invoke-direct {p2, v1}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method
