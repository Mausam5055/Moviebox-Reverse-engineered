.class public final Ls3/l;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/m;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:[Ll2/s0;

.field private d:Z

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/l;->a:Ljava/util/List;

    iput-object p2, p0, Ls3/l;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ll2/s0;

    iput-object p1, p0, Ls3/l;->c:[Ll2/s0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ls3/l;->g:J

    return-void
.end method

.method private e(Landroidx/media3/common/util/j0;I)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result p1

    if-eq p1, p2, :cond_1

    iput-boolean v1, p0, Ls3/l;->d:Z

    :cond_1
    iget p1, p0, Ls3/l;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ls3/l;->e:I

    iget-boolean p1, p0, Ls3/l;->d:Z

    return p1
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 6

    iget-boolean v0, p0, Ls3/l;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Ls3/l;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Ls3/l;->e(Landroidx/media3/common/util/j0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ls3/l;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Ls3/l;->e(Landroidx/media3/common/util/j0;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v2

    iget-object v3, p0, Ls3/l;->c:[Ll2/s0;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-interface {v5, p1, v2}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Ls3/l;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Ls3/l;->f:I

    :cond_3
    return-void
.end method

.method public b(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Ls3/l;->d:Z

    iput-wide p1, p0, Ls3/l;->g:J

    const/4 p1, 0x0

    iput p1, p0, Ls3/l;->f:I

    const/4 p1, 0x2

    iput p1, p0, Ls3/l;->e:I

    return-void
.end method

.method public c(Z)V
    .locals 10

    iget-boolean p1, p0, Ls3/l;->d:Z

    if-eqz p1, :cond_2

    iget-wide v0, p0, Ls3/l;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object p1, p0, Ls3/l;->c:[Ll2/s0;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-wide v4, p0, Ls3/l;->g:J

    iget v7, p0, Ls3/l;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Ll2/s0;->d(JIIILl2/s0$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Ls3/l;->d:Z

    :cond_2
    return-void
.end method

.method public d(Ll2/t;Ls3/l0$d;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ls3/l;->c:[Ll2/s0;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ls3/l;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/l0$a;

    invoke-virtual {p2}, Ls3/l0$d;->a()V

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/r$b;

    invoke-direct {v3}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p2}, Ls3/l0$d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    iget-object v4, p0, Ls3/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    iget-object v4, v1, Ls3/l0$a;->c:[B

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v3

    iget-object v1, v1, Ls3/l0$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    invoke-interface {v2, v1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iget-object v1, p0, Ls3/l;->c:[Ll2/s0;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3/l;->d:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/l;->g:J

    return-void
.end method
