.class public final Ls3/y;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/l0;


# instance fields
.field private final a:Ls3/m;

.field private final b:Landroidx/media3/common/util/i0;

.field private c:I

.field private d:I

.field private e:Landroidx/media3/common/util/p0;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Ls3/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/y;->a:Ls3/m;

    new-instance p1, Landroidx/media3/common/util/i0;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/i0;-><init>([B)V

    iput-object p1, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 p1, 0x0

    iput p1, p0, Ls3/y;->c:I

    return-void
.end method

.method private d(Landroidx/media3/common/util/j0;[BI)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/y;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->X(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Ls3/y;->d:I

    invoke-virtual {p1, p2, v2, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    :goto_0
    iget p1, p0, Ls3/y;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/y;->d:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private e()Z
    .locals 7

    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->p(I)V

    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    const-string v2, "PesReader"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start code prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Ls3/y;->j:I

    return v1

    :cond_0
    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5}, Landroidx/media3/common/util/i0;->g()Z

    move-result v5

    iput-boolean v5, p0, Ls3/y;->k:Z

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5}, Landroidx/media3/common/util/i0;->g()Z

    move-result v5

    iput-boolean v5, p0, Ls3/y;->f:Z

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5}, Landroidx/media3/common/util/i0;->g()Z

    move-result v5

    iput-boolean v5, p0, Ls3/y;->g:Z

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    iput v1, p0, Ls3/y;->i:I

    if-nez v0, :cond_1

    iput v3, p0, Ls3/y;->j:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x3

    sub-int/2addr v0, v1

    iput v0, p0, Ls3/y;->j:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found negative packet payload size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls3/y;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Ls3/y;->j:I

    :cond_2
    :goto_0
    return v4
.end method

.method private f()V
    .locals 10

    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->p(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/y;->l:J

    iget-boolean v0, p0, Ls3/y;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-boolean v5, p0, Ls3/y;->h:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Ls3/y;->g:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v1, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v2, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v2, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v2, p0, Ls3/y;->e:Landroidx/media3/common/util/p0;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/p0;->b(J)J

    iput-boolean v6, p0, Ls3/y;->h:Z

    :cond_0
    iget-object v0, p0, Ls3/y;->e:Landroidx/media3/common/util/p0;

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/p0;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Ls3/y;->l:J

    :cond_1
    return-void
.end method

.method private g(I)V
    .locals 0

    iput p1, p0, Ls3/y;->c:I

    const/4 p1, 0x0

    iput p1, p0, Ls3/y;->d:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;I)V
    .locals 8

    iget-object v0, p0, Ls3/y;->e:Landroidx/media3/common/util/p0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Ls3/y;->c:I

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_4

    const-string v6, "PesReader"

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    iget v0, p0, Ls3/y;->j:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected start indicator: expected "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Ls3/y;->j:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " more bytes"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v6, p0, Ls3/y;->a:Ls3/m;

    invoke-interface {v6, v0}, Ls3/m;->c(Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    const-string v0, "Unexpected start indicator reading extended header"

    invoke-static {v6, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-direct {p0, v5}, Ls3/y;->g(I)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_e

    iget v0, p0, Ls3/y;->c:I

    if-eqz v0, :cond_d

    if-eq v0, v5, :cond_b

    if-eq v0, v3, :cond_9

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v6, p0, Ls3/y;->j:I

    if-ne v6, v1, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    sub-int v6, v0, v6

    :goto_3
    if-lez v6, :cond_7

    sub-int/2addr v0, v6

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/j0;->V(I)V

    :cond_7
    iget-object v6, p0, Ls3/y;->a:Ls3/m;

    invoke-interface {v6, p1}, Ls3/m;->a(Landroidx/media3/common/util/j0;)V

    iget v6, p0, Ls3/y;->j:I

    if-eq v6, v1, :cond_5

    sub-int/2addr v6, v0

    iput v6, p0, Ls3/y;->j:I

    if-nez v6, :cond_5

    iget-object v0, p0, Ls3/y;->a:Ls3/m;

    invoke-interface {v0, v4}, Ls3/m;->c(Z)V

    invoke-direct {p0, v5}, Ls3/y;->g(I)V

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    const/16 v0, 0xa

    iget v6, p0, Ls3/y;->i:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v6, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    iget-object v6, v6, Landroidx/media3/common/util/i0;->a:[B

    invoke-direct {p0, p1, v6, v0}, Ls3/y;->d(Landroidx/media3/common/util/j0;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iget v6, p0, Ls3/y;->i:I

    invoke-direct {p0, p1, v0, v6}, Ls3/y;->d(Landroidx/media3/common/util/j0;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Ls3/y;->f()V

    iget-boolean v0, p0, Ls3/y;->k:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_4

    :cond_a
    move v0, v4

    :goto_4
    or-int/2addr p2, v0

    iget-object v0, p0, Ls3/y;->a:Ls3/m;

    iget-wide v6, p0, Ls3/y;->l:J

    invoke-interface {v0, v6, v7, p2}, Ls3/m;->b(JI)V

    invoke-direct {p0, v2}, Ls3/y;->g(I)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Ls3/y;->b:Landroidx/media3/common/util/i0;

    iget-object v0, v0, Landroidx/media3/common/util/i0;->a:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v0, v6}, Ls3/y;->d(Landroidx/media3/common/util/j0;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Ls3/y;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    move v0, v4

    :goto_5
    invoke-direct {p0, v0}, Ls3/y;->g(I)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->X(I)V

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method public b(Landroidx/media3/common/util/p0;Ll2/t;Ls3/l0$d;)V
    .locals 0

    iput-object p1, p0, Ls3/y;->e:Landroidx/media3/common/util/p0;

    iget-object p1, p0, Ls3/y;->a:Ls3/m;

    invoke-interface {p1, p2, p3}, Ls3/m;->d(Ll2/t;Ls3/l0$d;)V

    return-void
.end method

.method public c(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ls3/y;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    iget v3, p0, Ls3/y;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, p0, Ls3/y;->j:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls3/y;->a:Ls3/m;

    instance-of p1, p1, Ls3/n;

    if-nez p1, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls3/y;->c:I

    iput v0, p0, Ls3/y;->d:I

    iput-boolean v0, p0, Ls3/y;->h:Z

    iget-object v0, p0, Ls3/y;->a:Ls3/m;

    invoke-interface {v0}, Ls3/m;->seek()V

    return-void
.end method
