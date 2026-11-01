.class public final Ls3/r;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/media3/common/util/j0;

.field private c:Ll2/s0;

.field private d:Z

.field private e:J

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/r;->a:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/r;->e:J

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 7

    iget-object v0, p0, Ls3/r;->c:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ls3/r;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/r;->g:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v3

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v4

    iget-object v5, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v5

    iget v6, p0, Ls3/r;->g:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Ls3/r;->g:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v1, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    const/16 v4, 0x49

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    const/16 v4, 0x44

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    const/16 v4, 0x33

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/j0;->X(I)V

    iget-object v1, p0, Ls3/r;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->G()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Ls3/r;->f:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Ls3/r;->d:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Ls3/r;->f:I

    iget v2, p0, Ls3/r;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ls3/r;->c:Ll2/s0;

    invoke-interface {v1, p1, v0}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget p1, p0, Ls3/r;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/r;->g:I

    return-void
.end method

.method public b(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Ls3/r;->d:Z

    iput-wide p1, p0, Ls3/r;->e:J

    const/4 p1, 0x0

    iput p1, p0, Ls3/r;->f:I

    iput p1, p0, Ls3/r;->g:I

    return-void
.end method

.method public c(Z)V
    .locals 8

    iget-object p1, p0, Ls3/r;->c:Ll2/s0;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Ls3/r;->d:Z

    if-eqz p1, :cond_2

    iget p1, p0, Ls3/r;->f:I

    if-eqz p1, :cond_2

    iget v0, p0, Ls3/r;->g:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Ls3/r;->e:J

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

    iget-object v1, p0, Ls3/r;->c:Ll2/s0;

    iget-wide v2, p0, Ls3/r;->e:J

    iget v5, p0, Ls3/r;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iput-boolean v0, p0, Ls3/r;->d:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public d(Ll2/t;Ls3/l0$d;)V
    .locals 2

    invoke-virtual {p2}, Ls3/l0$d;->a()V

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    iput-object p1, p0, Ls3/r;->c:Ll2/s0;

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p2}, Ls3/l0$d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    iget-object v0, p0, Ls3/r;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    const-string v0, "application/id3"

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p2

    invoke-interface {p1, p2}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3/r;->d:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/r;->e:J

    return-void
.end method
