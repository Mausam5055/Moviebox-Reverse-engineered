.class public final Ls3/t;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/m;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Ll2/i0$a;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:Ll2/s0;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:J

.field private m:I

.field private n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Ls3/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ls3/t;->h:I

    new-instance v1, Landroidx/media3/common/util/j0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object v1, p0, Ls3/t;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Ll2/i0$a;

    invoke-direct {v0}, Ll2/i0$a;-><init>()V

    iput-object v0, p0, Ls3/t;->b:Ll2/i0$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/t;->n:J

    iput-object p1, p0, Ls3/t;->c:Ljava/lang/String;

    iput p2, p0, Ls3/t;->d:I

    iput-object p3, p0, Ls3/t;->e:Ljava/lang/String;

    return-void
.end method

.method private e(Landroidx/media3/common/util/j0;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    aget-byte v3, v0, v1

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    iget-boolean v5, p0, Ls3/t;->k:Z

    if-eqz v5, :cond_1

    and-int/lit16 v3, v3, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_1

    move v3, v7

    goto :goto_2

    :cond_1
    move v3, v6

    :goto_2
    iput-boolean v4, p0, Ls3/t;->k:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    iput-boolean v6, p0, Ls3/t;->k:Z

    iget-object p1, p0, Ls3/t;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v7

    const/4 p1, 0x2

    iput p1, p0, Ls3/t;->i:I

    iput v7, p0, Ls3/t;->h:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    return-void
.end method

.method private f(Landroidx/media3/common/util/j0;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/t;->m:I

    iget v2, p0, Ls3/t;->i:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ls3/t;->f:Ll2/s0;

    invoke-interface {v1, p1, v0}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget p1, p0, Ls3/t;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/t;->i:I

    iget v0, p0, Ls3/t;->m:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ls3/t;->n:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v1, p0, Ls3/t;->f:Ll2/s0;

    iget-wide v2, p0, Ls3/t;->n:J

    iget v5, p0, Ls3/t;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iget-wide v1, p0, Ls3/t;->n:J

    iget-wide v3, p0, Ls3/t;->l:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ls3/t;->n:J

    iput v0, p0, Ls3/t;->i:I

    iput v0, p0, Ls3/t;->h:I

    return-void
.end method

.method private g(Landroidx/media3/common/util/j0;)V
    .locals 7

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/t;->i:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ls3/t;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    iget v3, p0, Ls3/t;->i:I

    invoke-virtual {p1, v1, v3, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    iget p1, p0, Ls3/t;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/t;->i:I

    if-ge p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ls3/t;->a:Landroidx/media3/common/util/j0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ls3/t;->b:Ll2/i0$a;

    iget-object v1, p0, Ls3/t;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-virtual {p1, v1}, Ll2/i0$a;->a(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput v0, p0, Ls3/t;->i:I

    iput v1, p0, Ls3/t;->h:I

    return-void

    :cond_1
    iget-object p1, p0, Ls3/t;->b:Ll2/i0$a;

    iget v3, p1, Ll2/i0$a;->c:I

    iput v3, p0, Ls3/t;->m:I

    iget-boolean v3, p0, Ls3/t;->j:Z

    if-nez v3, :cond_2

    iget v3, p1, Ll2/i0$a;->g:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget p1, p1, Ll2/i0$a;->d:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    iput-wide v3, p0, Ls3/t;->l:J

    new-instance p1, Landroidx/media3/common/r$b;

    invoke-direct {p1}, Landroidx/media3/common/r$b;-><init>()V

    iget-object v3, p0, Ls3/t;->g:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    iget-object v3, p0, Ls3/t;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    iget-object v3, p0, Ls3/t;->b:Ll2/i0$a;

    iget-object v3, v3, Ll2/i0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    const/16 v3, 0x1000

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    iget-object v3, p0, Ls3/t;->b:Ll2/i0$a;

    iget v3, v3, Ll2/i0$a;->e:I

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object p1

    iget-object v3, p0, Ls3/t;->b:Ll2/i0$a;

    iget v3, v3, Ll2/i0$a;->d:I

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    iget-object v3, p0, Ls3/t;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    iget v3, p0, Ls3/t;->d:I

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    iget-object v3, p0, Ls3/t;->f:Ll2/s0;

    invoke-interface {v3, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iput-boolean v1, p0, Ls3/t;->j:Z

    :cond_2
    iget-object p1, p0, Ls3/t;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ls3/t;->f:Ll2/s0;

    iget-object v0, p0, Ls3/t;->a:Landroidx/media3/common/util/j0;

    invoke-interface {p1, v0, v2}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    const/4 p1, 0x2

    iput p1, p0, Ls3/t;->h:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 2

    iget-object v0, p0, Ls3/t;->f:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Ls3/t;->h:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Ls3/t;->f(Landroidx/media3/common/util/j0;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Ls3/t;->g(Landroidx/media3/common/util/j0;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Ls3/t;->e(Landroidx/media3/common/util/j0;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(JI)V
    .locals 0

    iput-wide p1, p0, Ls3/t;->n:J

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d(Ll2/t;Ls3/l0$d;)V
    .locals 1

    invoke-virtual {p2}, Ls3/l0$d;->a()V

    invoke-virtual {p2}, Ls3/l0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls3/t;->g:Ljava/lang/String;

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    iput-object p1, p0, Ls3/t;->f:Ll2/s0;

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ls3/t;->h:I

    iput v0, p0, Ls3/t;->i:I

    iput-boolean v0, p0, Ls3/t;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/t;->n:J

    return-void
.end method
