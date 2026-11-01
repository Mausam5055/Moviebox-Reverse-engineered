.class public final Ls3/f;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/m;


# instance fields
.field private final a:Landroidx/media3/common/util/i0;

.field private final b:Landroidx/media3/common/util/j0;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ll2/s0;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Landroidx/media3/common/r;

.field private n:I

.field private o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Ls3/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/i0;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/i0;-><init>([B)V

    iput-object v0, p0, Ls3/f;->a:Landroidx/media3/common/util/i0;

    new-instance v1, Landroidx/media3/common/util/j0;

    iget-object v0, v0, Landroidx/media3/common/util/i0;->a:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object v1, p0, Ls3/f;->b:Landroidx/media3/common/util/j0;

    const/4 v0, 0x0

    iput v0, p0, Ls3/f;->h:I

    iput v0, p0, Ls3/f;->i:I

    iput-boolean v0, p0, Ls3/f;->j:Z

    iput-boolean v0, p0, Ls3/f;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/f;->o:J

    iput-object p1, p0, Ls3/f;->c:Ljava/lang/String;

    iput p2, p0, Ls3/f;->d:I

    iput-object p3, p0, Ls3/f;->e:Ljava/lang/String;

    return-void
.end method

.method private e(Landroidx/media3/common/util/j0;[BI)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/f;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Ls3/f;->i:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    iget p1, p0, Ls3/f;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/f;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Ls3/f;->a:Landroidx/media3/common/util/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->p(I)V

    iget-object v0, p0, Ls3/f;->a:Landroidx/media3/common/util/i0;

    invoke-static {v0}, Ll2/c;->f(Landroidx/media3/common/util/i0;)Ll2/c$c;

    move-result-object v0

    iget-object v1, p0, Ls3/f;->m:Landroidx/media3/common/r;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_0

    iget v3, v0, Ll2/c$c;->c:I

    iget v4, v1, Landroidx/media3/common/r;->E:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Ll2/c$c;->b:I

    iget v4, v1, Landroidx/media3/common/r;->F:I

    if-ne v3, v4, :cond_0

    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroidx/media3/common/r$b;

    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    iget-object v3, p0, Ls3/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    iget-object v3, p0, Ls3/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    iget v2, v0, Ll2/c$c;->c:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v1

    iget v2, v0, Ll2/c$c;->b:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    iget-object v2, p0, Ls3/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    iget v2, p0, Ls3/f;->d:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    iput-object v1, p0, Ls3/f;->m:Landroidx/media3/common/r;

    iget-object v2, p0, Ls3/f;->g:Ll2/s0;

    invoke-interface {v2, v1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    :cond_1
    iget v1, v0, Ll2/c$c;->d:I

    iput v1, p0, Ls3/f;->n:I

    iget v0, v0, Ll2/c$c;->e:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Ls3/f;->m:Landroidx/media3/common/r;

    iget v2, v2, Landroidx/media3/common/r;->F:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Ls3/f;->l:J

    return-void
.end method

.method private g(Landroidx/media3/common/util/j0;)Z
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    iget-boolean v0, p0, Ls3/f;->j:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p0, Ls3/f;->j:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Ls3/f;->j:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Ls3/f;->k:Z

    return v3

    :cond_6
    return v1
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 11

    iget-object v0, p0, Ls3/f;->g:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Ls3/f;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/f;->n:I

    iget v4, p0, Ls3/f;->i:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ls3/f;->g:Ll2/s0;

    invoke-interface {v1, p1, v0}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget v1, p0, Ls3/f;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Ls3/f;->i:I

    iget v0, p0, Ls3/f;->n:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Ls3/f;->o:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v4, p0, Ls3/f;->g:Ll2/s0;

    iget-wide v5, p0, Ls3/f;->o:J

    iget v8, p0, Ls3/f;->n:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iget-wide v0, p0, Ls3/f;->o:J

    iget-wide v3, p0, Ls3/f;->l:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Ls3/f;->o:J

    iput v2, p0, Ls3/f;->h:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ls3/f;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Ls3/f;->e(Landroidx/media3/common/util/j0;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ls3/f;->f()V

    iget-object v0, p0, Ls3/f;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Ls3/f;->g:Ll2/s0;

    iget-object v2, p0, Ls3/f;->b:Landroidx/media3/common/util/j0;

    invoke-interface {v0, v2, v3}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iput v1, p0, Ls3/f;->h:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Ls3/f;->g(Landroidx/media3/common/util/j0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Ls3/f;->h:I

    iget-object v0, p0, Ls3/f;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v2

    iget-object v0, p0, Ls3/f;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    iget-boolean v2, p0, Ls3/f;->k:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x41

    goto :goto_2

    :cond_5
    const/16 v2, 0x40

    :goto_2
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    iput v1, p0, Ls3/f;->i:I

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public b(JI)V
    .locals 0

    iput-wide p1, p0, Ls3/f;->o:J

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

    iput-object v0, p0, Ls3/f;->f:Ljava/lang/String;

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    iput-object p1, p0, Ls3/f;->g:Ll2/s0;

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ls3/f;->h:I

    iput v0, p0, Ls3/f;->i:I

    iput-boolean v0, p0, Ls3/f;->j:Z

    iput-boolean v0, p0, Ls3/f;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/f;->o:J

    return-void
.end method
