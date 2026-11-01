.class public final Ls3/u;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/media3/common/util/j0;

.field private final c:Landroidx/media3/common/util/i0;

.field private final d:Landroidx/media3/common/util/j0;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ll2/s0;

.field private h:D

.field private i:D

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:Ls3/v$b;

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/u;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Ls3/u;->e:I

    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/j0;-><init>([BI)V

    iput-object p1, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/i0;

    invoke-direct {p1}, Landroidx/media3/common/util/i0;-><init>()V

    iput-object p1, p0, Ls3/u;->c:Landroidx/media3/common/util/i0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Ls3/u;->d:Landroidx/media3/common/util/j0;

    new-instance p1, Ls3/v$b;

    invoke-direct {p1}, Ls3/v$b;-><init>()V

    iput-object p1, p0, Ls3/u;->q:Ls3/v$b;

    const p1, -0x7fffffff

    iput p1, p0, Ls3/u;->r:I

    const/4 p1, -0x1

    iput p1, p0, Ls3/u;->s:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ls3/u;->u:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls3/u;->k:Z

    iput-boolean p1, p0, Ls3/u;->n:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Ls3/u;->h:D

    iput-wide v0, p0, Ls3/u;->i:D

    return-void
.end method

.method private e(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V
    .locals 4

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v1

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->f()I

    move-result v3

    invoke-virtual {p1, v2, v3, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-virtual {p2, v1}, Landroidx/media3/common/util/j0;->X(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 10

    iget-boolean v0, p0, Ls3/u;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ls3/u;->k:Z

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iget v0, p0, Ls3/u;->s:I

    iget v2, p0, Ls3/u;->t:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v6

    iget v0, p0, Ls3/u;->r:I

    int-to-double v6, v0

    div-double/2addr v2, v6

    iget-wide v6, p0, Ls3/u;->h:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget-boolean v0, p0, Ls3/u;->j:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ls3/u;->j:Z

    iget-wide v2, p0, Ls3/u;->i:D

    iput-wide v2, p0, Ls3/u;->h:D

    goto :goto_1

    :cond_1
    iget-wide v8, p0, Ls3/u;->h:D

    add-double/2addr v8, v2

    iput-wide v8, p0, Ls3/u;->h:D

    :goto_1
    iget-object v2, p0, Ls3/u;->g:Ll2/s0;

    iget v0, p0, Ls3/u;->p:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v3, v6

    move v6, v0

    move v7, v8

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iput-boolean v1, p0, Ls3/u;->v:Z

    iput v1, p0, Ls3/u;->t:I

    iput v1, p0, Ls3/u;->p:I

    return-void
.end method

.method private g(Landroidx/media3/common/util/i0;)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {p1}, Ls3/v;->h(Landroidx/media3/common/util/i0;)Ls3/v$c;

    move-result-object p1

    iget v1, p1, Ls3/v$c;->b:I

    iput v1, p0, Ls3/u;->r:I

    iget v1, p1, Ls3/v$c;->c:I

    iput v1, p0, Ls3/u;->s:I

    iget-wide v1, p0, Ls3/u;->u:J

    iget-object v3, p0, Ls3/u;->q:Ls3/v$b;

    iget-wide v3, v3, Ls3/v$b;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iput-wide v3, p0, Ls3/u;->u:J

    iget v1, p1, Ls3/v$c;->a:I

    const/4 v2, -0x1

    const-string v3, "mhm1"

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Ls3/v$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, ".%02X"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object p1, p1, Ls3/v$c;->d:[B

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    sget-object v1, Landroidx/media3/common/util/a1;->f:[B

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Landroidx/media3/common/r$b;

    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    iget-object v2, p0, Ls3/u;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    iget-object v2, p0, Ls3/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    const-string v2, "audio/mhm1"

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    iget v2, p0, Ls3/u;->r:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    iget-object v1, p0, Ls3/u;->g:Ll2/s0;

    invoke-interface {v1, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    :cond_2
    iput-boolean v0, p0, Ls3/u;->v:Z

    return-void
.end method

.method private h()Z
    .locals 4

    iget-object v0, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    iget-object v1, p0, Ls3/u;->c:Landroidx/media3/common/util/i0;

    iget-object v2, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/i0;->o([BI)V

    iget-object v1, p0, Ls3/u;->c:Landroidx/media3/common/util/i0;

    iget-object v2, p0, Ls3/u;->q:Ls3/v$b;

    invoke-static {v1, v2}, Ls3/v;->g(Landroidx/media3/common/util/i0;Ls3/v$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Ls3/u;->o:I

    iget v2, p0, Ls3/u;->p:I

    iget-object v3, p0, Ls3/u;->q:Ls3/v$b;

    iget v3, v3, Ls3/v$b;->c:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Ls3/u;->p:I

    :cond_0
    return v1
.end method

.method private i(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private j(Landroidx/media3/common/util/j0;)Z
    .locals 4

    iget v0, p0, Ls3/u;->l:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return v2

    :cond_0
    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Ls3/u;->m:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Ls3/u;->m:I

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v3

    or-int/2addr v0, v3

    iput v0, p0, Ls3/u;->m:I

    invoke-static {v0}, Ls3/v;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iput v2, p0, Ls3/u;->m:I

    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method private k(Landroidx/media3/common/util/j0;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget-object v1, p0, Ls3/u;->q:Ls3/v$b;

    iget v1, v1, Ls3/v$b;->c:I

    iget v2, p0, Ls3/u;->o:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ls3/u;->g:Ll2/s0;

    invoke-interface {v1, p1, v0}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget p1, p0, Ls3/u;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/u;->o:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 5

    iget-object v0, p0, Ls3/u;->g:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Ls3/u;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x2

    if-eq v0, v1, :cond_6

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Ls3/u;->q:Ls3/v$b;

    iget v0, v0, Ls3/v$b;->a:I

    invoke-direct {p0, v0}, Ls3/u;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls3/u;->d:Landroidx/media3/common/util/j0;

    invoke-direct {p0, p1, v0, v1}, Ls3/u;->e(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V

    :cond_1
    invoke-direct {p0, p1}, Ls3/u;->k(Landroidx/media3/common/util/j0;)V

    iget v0, p0, Ls3/u;->o:I

    iget-object v3, p0, Ls3/u;->q:Ls3/v$b;

    iget v4, v3, Ls3/v$b;->c:I

    if-ne v0, v4, :cond_0

    iget v0, v3, Ls3/v$b;->a:I

    if-ne v0, v1, :cond_2

    new-instance v0, Landroidx/media3/common/util/i0;

    iget-object v2, p0, Ls3/u;->d:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    invoke-direct {p0, v0}, Ls3/u;->g(Landroidx/media3/common/util/i0;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x11

    if-ne v0, v3, :cond_3

    new-instance v0, Landroidx/media3/common/util/i0;

    iget-object v2, p0, Ls3/u;->d:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    invoke-static {v0}, Ls3/v;->f(Landroidx/media3/common/util/i0;)I

    move-result v0

    iput v0, p0, Ls3/u;->t:I

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Ls3/u;->f()V

    :cond_4
    :goto_1
    iput v1, p0, Ls3/u;->e:I

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_6
    iget-object v0, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Ls3/u;->e(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V

    iget-object v0, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Ls3/u;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Ls3/u;->g:Ll2/s0;

    iget-object v3, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v3}, Landroidx/media3/common/util/j0;->g()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget-object v0, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Ls3/u;->d:Landroidx/media3/common/util/j0;

    iget-object v3, p0, Ls3/u;->q:Ls3/v$b;

    iget v3, v3, Ls3/v$b;->c:I

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->S(I)V

    iput-boolean v1, p0, Ls3/u;->n:Z

    iput v2, p0, Ls3/u;->e:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->V(I)V

    iput-boolean v3, p0, Ls3/u;->n:Z

    goto/16 :goto_0

    :cond_8
    iput-boolean v3, p0, Ls3/u;->n:Z

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1}, Ls3/u;->j(Landroidx/media3/common/util/j0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Ls3/u;->e:I

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public b(JI)V
    .locals 2

    iput p3, p0, Ls3/u;->l:I

    iget-boolean p3, p0, Ls3/u;->k:Z

    if-nez p3, :cond_1

    iget p3, p0, Ls3/u;->p:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Ls3/u;->n:Z

    if-nez p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Ls3/u;->j:Z

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Ls3/u;->j:Z

    if-eqz p3, :cond_2

    long-to-double p1, p1

    iput-wide p1, p0, Ls3/u;->i:D

    goto :goto_0

    :cond_2
    long-to-double p1, p1

    iput-wide p1, p0, Ls3/u;->h:D

    :cond_3
    :goto_0
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

    iput-object v0, p0, Ls3/u;->f:Ljava/lang/String;

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    iput-object p1, p0, Ls3/u;->g:Ll2/s0;

    return-void
.end method

.method public seek()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ls3/u;->e:I

    iput v0, p0, Ls3/u;->m:I

    iget-object v1, p0, Ls3/u;->b:Landroidx/media3/common/util/j0;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->S(I)V

    iput v0, p0, Ls3/u;->o:I

    iput v0, p0, Ls3/u;->p:I

    const v1, -0x7fffffff

    iput v1, p0, Ls3/u;->r:I

    const/4 v1, -0x1

    iput v1, p0, Ls3/u;->s:I

    iput v0, p0, Ls3/u;->t:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ls3/u;->u:J

    iput-boolean v0, p0, Ls3/u;->v:Z

    iput-boolean v0, p0, Ls3/u;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls3/u;->n:Z

    iput-boolean v0, p0, Ls3/u;->k:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Ls3/u;->h:D

    iput-wide v0, p0, Ls3/u;->i:D

    return-void
.end method
