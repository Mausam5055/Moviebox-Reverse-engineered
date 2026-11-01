.class final Li3/v;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/s0;


# instance fields
.field private final a:Ll2/s0;

.field private final b:Li3/s$a;

.field private final c:Li3/d;

.field private final d:Landroidx/media3/common/util/j0;

.field private e:I

.field private f:I

.field private g:[B

.field private h:Li3/s;

.field private i:Landroidx/media3/common/r;

.field private j:Z


# direct methods
.method public constructor <init>(Ll2/s0;Li3/s$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/v;->a:Ll2/s0;

    iput-object p2, p0, Li3/v;->b:Li3/s$a;

    new-instance p1, Li3/d;

    invoke-direct {p1}, Li3/d;-><init>()V

    iput-object p1, p0, Li3/v;->c:Li3/d;

    const/4 p1, 0x0

    iput p1, p0, Li3/v;->e:I

    iput p1, p0, Li3/v;->f:I

    sget-object p1, Landroidx/media3/common/util/a1;->f:[B

    iput-object p1, p0, Li3/v;->g:[B

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Li3/v;->d:Landroidx/media3/common/util/j0;

    return-void
.end method

.method public static synthetic h(Li3/v;JILi3/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Li3/v;->j(JILi3/e;)V

    return-void
.end method

.method private i(I)V
    .locals 4

    iget-object v0, p0, Li3/v;->g:[B

    array-length v0, v0

    iget v1, p0, Li3/v;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Li3/v;->e:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Li3/v;->g:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p1, [B

    :goto_0
    iget v2, p0, Li3/v;->e:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Li3/v;->e:I

    iput v1, p0, Li3/v;->f:I

    iput-object p1, p0, Li3/v;->g:[B

    return-void
.end method

.method private synthetic j(JILi3/e;)V
    .locals 0

    invoke-direct {p0, p4, p1, p2, p3}, Li3/v;->k(Li3/e;JI)V

    return-void
.end method

.method private k(Li3/e;JI)V
    .locals 11

    iget-object v0, p0, Li3/v;->i:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Li3/v;->c:Li3/d;

    iget-object v1, p1, Li3/e;->a:Lcom/google/common/collect/ImmutableList;

    iget-wide v2, p1, Li3/e;->c:J

    invoke-virtual {v0, v1, v2, v3}, Li3/d;->a(Ljava/util/List;J)[B

    move-result-object v0

    iget-object v1, p0, Li3/v;->d:Landroidx/media3/common/util/j0;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/j0;->T([B)V

    iget-object v1, p0, Li3/v;->a:Ll2/s0;

    iget-object v2, p0, Li3/v;->d:Landroidx/media3/common/util/j0;

    array-length v3, v0

    invoke-interface {v1, v2, v3}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget-wide v1, p1, Li3/e;->b:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-nez p1, :cond_1

    iget-object p1, p0, Li3/v;->i:Landroidx/media3/common/r;

    iget-wide v1, p1, Landroidx/media3/common/r;->t:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    :goto_1
    move-wide v5, p2

    goto :goto_2

    :cond_1
    iget-object p1, p0, Li3/v;->i:Landroidx/media3/common/r;

    iget-wide v6, p1, Landroidx/media3/common/r;->t:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_2

    add-long/2addr p2, v1

    goto :goto_1

    :cond_2
    add-long p2, v1, v6

    goto :goto_1

    :goto_2
    iget-object v4, p0, Li3/v;->a:Ll2/s0;

    or-int/lit8 v7, p4, 0x1

    array-length v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Ll2/s0;->d(JIIILl2/s0$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;II)V
    .locals 1

    iget-object v0, p0, Li3/v;->h:Li3/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Li3/v;->a:Ll2/s0;

    invoke-interface {v0, p1, p2, p3}, Ll2/s0;->a(Landroidx/media3/common/util/j0;II)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Li3/v;->i(I)V

    iget-object p3, p0, Li3/v;->g:[B

    iget v0, p0, Li3/v;->f:I

    invoke-virtual {p1, p3, v0, p2}, Landroidx/media3/common/util/j0;->l([BII)V

    iget p1, p0, Li3/v;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Li3/v;->f:I

    return-void
.end method

.method public synthetic b(Landroidx/media3/common/util/j0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ll2/r0;->c(Ll2/s0;Landroidx/media3/common/util/j0;I)V

    return-void
.end method

.method public c(Landroidx/media3/common/r;)V
    .locals 4

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v0, p0, Li3/v;->i:Landroidx/media3/common/r;

    invoke-virtual {p1, v0}, Landroidx/media3/common/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Li3/v;->i:Landroidx/media3/common/r;

    iget-object v0, p0, Li3/v;->b:Li3/s$a;

    invoke-interface {v0, p1}, Li3/s$a;->a(Landroidx/media3/common/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li3/v;->b:Li3/s$a;

    invoke-interface {v0, p1}, Li3/s$a;->c(Landroidx/media3/common/r;)Li3/s;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Li3/v;->h:Li3/s;

    :cond_2
    iget-object v0, p0, Li3/v;->h:Li3/s;

    if-nez v0, :cond_3

    iget-object v0, p0, Li3/v;->a:Ll2/s0;

    invoke-interface {v0, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Li3/v;->a:Ll2/s0;

    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v1

    const-string v2, "application/x-media3-cues"

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    move-result-object v1

    iget-object v2, p0, Li3/v;->b:Li3/s$a;

    invoke-interface {v2, p1}, Li3/s$a;->b(Landroidx/media3/common/r;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/media3/common/r$b;->W(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    :goto_2
    return-void
.end method

.method public d(JIIILl2/s0$a;)V
    .locals 8

    iget-object v0, p0, Li3/v;->h:Li3/s;

    if-nez v0, :cond_0

    iget-object v1, p0, Li3/v;->a:Ll2/s0;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ll2/s0;->d(JIIILl2/s0$a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p6, :cond_1

    const/4 p6, 0x1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    invoke-static {p6, v1}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    iget p6, p0, Li3/v;->f:I

    sub-int/2addr p6, p5

    sub-int/2addr p6, p4

    :try_start_0
    iget-object v1, p0, Li3/v;->h:Li3/s;

    iget-object v2, p0, Li3/v;->g:[B

    invoke-static {}, Li3/s$b;->b()Li3/s$b;

    move-result-object v5

    new-instance v6, Li3/u;

    invoke-direct {v6, p0, p1, p2, p3}, Li3/u;-><init>(Li3/v;JI)V

    move v3, p6

    move v4, p4

    invoke-interface/range {v1 .. v6}, Li3/s;->a([BIILi3/s$b;Landroidx/media3/common/util/m;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Li3/v;->j:Z

    if-eqz p2, :cond_3

    const-string p2, "SubtitleTranscodingTO"

    const-string p3, "Parsing subtitles failed, ignoring sample."

    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/2addr p6, p4

    iput p6, p0, Li3/v;->e:I

    iget p1, p0, Li3/v;->f:I

    if-ne p6, p1, :cond_2

    iput v0, p0, Li3/v;->e:I

    iput v0, p0, Li3/v;->f:I

    :cond_2
    return-void

    :cond_3
    throw p1
.end method

.method public synthetic e(Landroidx/media3/common/j;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ll2/r0;->b(Ll2/s0;Landroidx/media3/common/j;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic f(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Ll2/r0;->a(Ll2/s0;J)V

    return-void
.end method

.method public g(Landroidx/media3/common/j;IZI)I
    .locals 1

    iget-object v0, p0, Li3/v;->h:Li3/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Li3/v;->a:Ll2/s0;

    invoke-interface {v0, p1, p2, p3, p4}, Ll2/s0;->g(Landroidx/media3/common/j;IZI)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2}, Li3/v;->i(I)V

    iget-object p4, p0, Li3/v;->g:[B

    iget v0, p0, Li3/v;->f:I

    invoke-interface {p1, p4, v0, p2}, Landroidx/media3/common/j;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Li3/v;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Li3/v;->f:I

    return p1
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Li3/v;->j:Z

    return-void
.end method
