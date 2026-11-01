.class abstract Lg3/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/i$b;,
        Lg3/i$c;
    }
.end annotation


# instance fields
.field private final a:Lg3/e;

.field private b:Ll2/s0;

.field private c:Ll2/t;

.field private d:Lg3/g;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lg3/i$b;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg3/e;

    invoke-direct {v0}, Lg3/e;-><init>()V

    iput-object v0, p0, Lg3/i;->a:Lg3/e;

    new-instance v0, Lg3/i$b;

    invoke-direct {v0}, Lg3/i$b;-><init>()V

    iput-object v0, p0, Lg3/i;->j:Lg3/i$b;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lg3/i;->b:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg3/i;->c:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private i(Ll2/s;)Z
    .locals 4

    :goto_0
    iget-object v0, p0, Lg3/i;->a:Lg3/e;

    invoke-virtual {v0, p1}, Lg3/e;->d(Ll2/s;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lg3/i;->h:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lg3/i;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lg3/i;->k:J

    iget-object v0, p0, Lg3/i;->a:Lg3/e;

    invoke-virtual {v0}, Lg3/e;->c()Landroidx/media3/common/util/j0;

    move-result-object v0

    iget-wide v1, p0, Lg3/i;->f:J

    iget-object v3, p0, Lg3/i;->j:Lg3/i$b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lg3/i;->h(Landroidx/media3/common/util/j0;JLg3/i$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lg3/i;->f:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private j(Ll2/s;)I
    .locals 13

    invoke-direct {p0, p1}, Lg3/i;->i(Ll2/s;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lg3/i;->j:Lg3/i$b;

    iget-object v0, v0, Lg3/i$b;->a:Landroidx/media3/common/r;

    iget v1, v0, Landroidx/media3/common/r;->F:I

    iput v1, p0, Lg3/i;->i:I

    iget-boolean v1, p0, Lg3/i;->m:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lg3/i;->b:Ll2/s0;

    invoke-interface {v1, v0}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iput-boolean v2, p0, Lg3/i;->m:Z

    :cond_1
    iget-object v0, p0, Lg3/i;->j:Lg3/i$b;

    iget-object v0, v0, Lg3/i$b;->b:Lg3/g;

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lg3/i;->d:Lg3/g;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    new-instance v0, Lg3/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/i$c;-><init>(Lg3/i$a;)V

    iput-object v0, p0, Lg3/i;->d:Lg3/g;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lg3/i;->a:Lg3/e;

    invoke-virtual {v0}, Lg3/e;->b()Lg3/f;

    move-result-object v0

    iget v1, v0, Lg3/f;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_0

    :cond_4
    move v10, v11

    :goto_0
    new-instance v12, Lg3/a;

    iget-wide v2, p0, Lg3/i;->f:J

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v4

    iget v1, v0, Lg3/f;->h:I

    iget v6, v0, Lg3/f;->i:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    iget-wide v8, v0, Lg3/f;->c:J

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lg3/a;-><init>(Lg3/i;JJJJZ)V

    iput-object v12, p0, Lg3/i;->d:Lg3/g;

    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lg3/i;->h:I

    iget-object v0, p0, Lg3/i;->a:Lg3/e;

    invoke-virtual {v0}, Lg3/e;->f()V

    return v11
.end method

.method private k(Ll2/s;Ll2/l0;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg3/i;->d:Lg3/g;

    invoke-interface {v2, v1}, Lg3/g;->a(Ll2/s;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_0

    move-object/from16 v6, p2

    iput-wide v2, v6, Ll2/l0;->a:J

    return v7

    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v6, v2, v8

    if-gez v6, :cond_1

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lg3/i;->e(J)V

    :cond_1
    iget-boolean v2, v0, Lg3/i;->l:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lg3/i;->d:Lg3/g;

    invoke-interface {v2}, Lg3/g;->createSeekMap()Ll2/m0;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll2/m0;

    iget-object v3, v0, Lg3/i;->c:Ll2/t;

    invoke-interface {v3, v2}, Ll2/t;->f(Ll2/m0;)V

    iget-object v3, v0, Lg3/i;->b:Ll2/s0;

    invoke-interface {v2}, Ll2/m0;->getDurationUs()J

    move-result-wide v10

    invoke-interface {v3, v10, v11}, Ll2/s0;->f(J)V

    iput-boolean v7, v0, Lg3/i;->l:Z

    :cond_2
    iget-wide v2, v0, Lg3/i;->k:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    iget-object v2, v0, Lg3/i;->a:Lg3/e;

    invoke-virtual {v2, v1}, Lg3/e;->d(Ll2/s;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    iput v1, v0, Lg3/i;->h:I

    const/4 v1, -0x1

    return v1

    :cond_4
    :goto_0
    iput-wide v4, v0, Lg3/i;->k:J

    iget-object v1, v0, Lg3/i;->a:Lg3/e;

    invoke-virtual {v1}, Lg3/e;->c()Landroidx/media3/common/util/j0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg3/i;->f(Landroidx/media3/common/util/j0;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    iget-wide v4, v0, Lg3/i;->g:J

    add-long v6, v4, v2

    iget-wide v10, v0, Lg3/i;->e:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    invoke-virtual {v0, v4, v5}, Lg3/i;->b(J)J

    move-result-wide v11

    iget-object v4, v0, Lg3/i;->b:Ll2/s0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    move-result v5

    invoke-interface {v4, v1, v5}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget-object v10, v0, Lg3/i;->b:Ll2/s0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x1

    invoke-interface/range {v10 .. v16}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iput-wide v8, v0, Lg3/i;->e:J

    :cond_5
    iget-wide v4, v0, Lg3/i;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lg3/i;->g:J

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget v0, p0, Lg3/i;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected c(J)J
    .locals 2

    iget v0, p0, Lg3/i;->i:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method d(Ll2/t;Ll2/s0;)V
    .locals 0

    iput-object p1, p0, Lg3/i;->c:Ll2/t;

    iput-object p2, p0, Lg3/i;->b:Ll2/s0;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg3/i;->l(Z)V

    return-void
.end method

.method protected e(J)V
    .locals 0

    iput-wide p1, p0, Lg3/i;->g:J

    return-void
.end method

.method protected abstract f(Landroidx/media3/common/util/j0;)J
.end method

.method final g(Ll2/s;Ll2/l0;)I
    .locals 3

    invoke-direct {p0}, Lg3/i;->a()V

    iget v0, p0, Lg3/i;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lg3/i;->d:Lg3/g;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lg3/i;->k(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1

    :cond_2
    iget-wide v0, p0, Lg3/i;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Ll2/s;->skipFully(I)V

    iput v2, p0, Lg3/i;->h:I

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-direct {p0, p1}, Lg3/i;->j(Ll2/s;)I

    move-result p1

    return p1
.end method

.method protected abstract h(Landroidx/media3/common/util/j0;JLg3/i$b;)Z
.end method

.method protected l(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lg3/i$b;

    invoke-direct {p1}, Lg3/i$b;-><init>()V

    iput-object p1, p0, Lg3/i;->j:Lg3/i$b;

    iput-wide v0, p0, Lg3/i;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lg3/i;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lg3/i;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lg3/i;->e:J

    iput-wide v0, p0, Lg3/i;->g:J

    return-void
.end method

.method final m(JJ)V
    .locals 2

    iget-object v0, p0, Lg3/i;->a:Lg3/e;

    invoke-virtual {v0}, Lg3/e;->e()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lg3/i;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lg3/i;->l(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lg3/i;->h:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lg3/i;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, Lg3/i;->e:J

    iget-object p1, p0, Lg3/i;->d:Lg3/g;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg3/g;

    iget-wide p2, p0, Lg3/i;->e:J

    invoke-interface {p1, p2, p3}, Lg3/g;->startSeek(J)V

    const/4 p1, 0x2

    iput p1, p0, Lg3/i;->h:I

    :cond_1
    :goto_0
    return-void
.end method
