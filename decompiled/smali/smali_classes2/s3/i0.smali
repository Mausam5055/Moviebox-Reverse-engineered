.class final Ls3/i0;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Landroidx/media3/common/util/p0;

.field private final c:Landroidx/media3/common/util/j0;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls3/i0;->a:I

    new-instance p1, Landroidx/media3/common/util/p0;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/p0;-><init>(J)V

    iput-object p1, p0, Ls3/i0;->b:Landroidx/media3/common/util/p0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/i0;->g:J

    iput-wide v0, p0, Ls3/i0;->h:J

    iput-wide v0, p0, Ls3/i0;->i:J

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    return-void
.end method

.method private a(Ll2/s;)I
    .locals 2

    iget-object v0, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    sget-object v1, Landroidx/media3/common/util/a1;->f:[B

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->T([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls3/i0;->d:Z

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    const/4 p1, 0x0

    return p1
.end method

.method private f(Ll2/s;Ll2/l0;I)I
    .locals 6

    iget v0, p0, Ls3/i0;->a:I

    int-to-long v0, v0

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    int-to-long v4, v3

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-wide v4, p2, Ll2/l0;->a:J

    return v2

    :cond_0
    iget-object p2, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/j0;->S(I)V

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    iget-object p2, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, v3, v0}, Ll2/s;->peekFully([BII)V

    iget-object p1, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    invoke-direct {p0, p1, p3}, Ls3/i0;->g(Landroidx/media3/common/util/j0;I)J

    move-result-wide p1

    iput-wide p1, p0, Ls3/i0;->g:J

    iput-boolean v2, p0, Ls3/i0;->e:Z

    return v3
.end method

.method private g(Landroidx/media3/common/util/j0;I)J
    .locals 6

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    aget-byte v4, v4, v0

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p2}, Ls3/m0;->c(Landroidx/media3/common/util/j0;II)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    return-wide v4

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method private h(Ll2/s;Ll2/l0;I)I
    .locals 5

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v0

    iget v2, p0, Ls3/i0;->a:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr v0, v3

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput-wide v0, p2, Ll2/l0;->a:J

    return v4

    :cond_0
    iget-object p2, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v2}, Landroidx/media3/common/util/j0;->S(I)V

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    iget-object p2, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v2}, Ll2/s;->peekFully([BII)V

    iget-object p1, p0, Ls3/i0;->c:Landroidx/media3/common/util/j0;

    invoke-direct {p0, p1, p3}, Ls3/i0;->i(Landroidx/media3/common/util/j0;I)J

    move-result-wide p1

    iput-wide p1, p0, Ls3/i0;->h:J

    iput-boolean v4, p0, Ls3/i0;->f:Z

    return v0
.end method

.method private i(Landroidx/media3/common/util/j0;I)J
    .locals 7

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    add-int/lit16 v2, v1, -0xbc

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v5

    invoke-static {v5, v0, v1, v2}, Ls3/m0;->b([BIII)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v2, p2}, Ls3/m0;->c(Landroidx/media3/common/util/j0;II)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1

    return-wide v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-wide v3
.end method


# virtual methods
.method public b()J
    .locals 2

    iget-wide v0, p0, Ls3/i0;->i:J

    return-wide v0
.end method

.method public c()Landroidx/media3/common/util/p0;
    .locals 1

    iget-object v0, p0, Ls3/i0;->b:Landroidx/media3/common/util/p0;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ls3/i0;->d:Z

    return v0
.end method

.method public e(Ll2/s;Ll2/l0;I)I
    .locals 4

    if-gtz p3, :cond_0

    invoke-direct {p0, p1}, Ls3/i0;->a(Ll2/s;)I

    move-result p1

    return p1

    :cond_0
    iget-boolean v0, p0, Ls3/i0;->f:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Ls3/i0;->h(Ll2/s;Ll2/l0;I)I

    move-result p1

    return p1

    :cond_1
    iget-wide v0, p0, Ls3/i0;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Ls3/i0;->a(Ll2/s;)I

    move-result p1

    return p1

    :cond_2
    iget-boolean v0, p0, Ls3/i0;->e:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Ls3/i0;->f(Ll2/s;Ll2/l0;I)I

    move-result p1

    return p1

    :cond_3
    iget-wide p2, p0, Ls3/i0;->g:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Ls3/i0;->a(Ll2/s;)I

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Ls3/i0;->b:Landroidx/media3/common/util/p0;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/p0;->b(J)J

    move-result-wide p2

    iget-object v0, p0, Ls3/i0;->b:Landroidx/media3/common/util/p0;

    iget-wide v1, p0, Ls3/i0;->h:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/p0;->c(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    iput-wide v0, p0, Ls3/i0;->i:J

    invoke-direct {p0, p1}, Ls3/i0;->a(Ll2/s;)I

    move-result p1

    return p1
.end method
