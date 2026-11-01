.class public final Ll2/o0;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ll2/t;

.field private g:Ll2/s0;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll2/o0;->a:I

    iput p2, p0, Ll2/o0;->b:I

    iput-object p3, p0, Ll2/o0;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ll2/o0;->f:Ll2/t;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    iput-object v0, p0, Ll2/o0;->g:Ll2/s0;

    new-instance v1, Landroidx/media3/common/r$b;

    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iget-object p1, p0, Ll2/o0;->f:Ll2/t;

    invoke-interface {p1}, Ll2/t;->endTracks()V

    iget-object p1, p0, Ll2/o0;->f:Ll2/t;

    new-instance v0, Ll2/p0;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Ll2/p0;-><init>(J)V

    invoke-interface {p1, v0}, Ll2/t;->f(Ll2/m0;)V

    const/4 p1, 0x1

    iput p1, p0, Ll2/o0;->e:I

    return-void
.end method

.method private g(Ll2/s;)V
    .locals 7

    iget-object v0, p0, Ll2/o0;->g:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/s0;

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Ll2/s0;->e(Landroidx/media3/common/j;IZ)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Ll2/o0;->e:I

    iget-object v0, p0, Ll2/o0;->g:Ll2/s0;

    iget v4, p0, Ll2/o0;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Ll2/s0;->d(JIIILl2/s0$a;)V

    const/4 p1, 0x0

    iput p1, p0, Ll2/o0;->d:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ll2/o0;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Ll2/o0;->d:I

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 0

    iput-object p1, p0, Ll2/o0;->f:Ll2/t;

    iget-object p1, p0, Ll2/o0;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Ll2/o0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 1

    iget p2, p0, Ll2/o0;->e:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Ll2/o0;->g(Ll2/s;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ll2/s;)Z
    .locals 5

    iget v0, p0, Ll2/o0;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Ll2/o0;->b:I

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    new-instance v0, Landroidx/media3/common/util/j0;

    iget v3, p0, Ll2/o0;->b:I

    invoke-direct {v0, v3}, Landroidx/media3/common/util/j0;-><init>(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v3

    iget v4, p0, Ll2/o0;->b:I

    invoke-interface {p1, v3, v2, v4}, Ll2/s;->peekFully([BII)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->P()I

    move-result p1

    iget v0, p0, Ll2/o0;->a:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public synthetic e()Ll2/r;
    .locals 1

    invoke-static {p0}, Ll2/q;->b(Ll2/r;)Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ll2/q;->a(Ll2/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Ll2/o0;->e:I

    if-ne p1, p2, :cond_1

    :cond_0
    iput p2, p0, Ll2/o0;->e:I

    const/4 p1, 0x0

    iput p1, p0, Ll2/o0;->d:I

    :cond_1
    return-void
.end method
