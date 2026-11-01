.class public final Ls3/g0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:[Ll2/s0;

.field private final d:Landroidx/media3/container/i;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/g0;->a:Ljava/util/List;

    iput-object p2, p0, Ls3/g0;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ll2/s0;

    iput-object p1, p0, Ls3/g0;->c:[Ll2/s0;

    new-instance p1, Landroidx/media3/container/i;

    new-instance p2, Ls3/f0;

    invoke-direct {p2, p0}, Ls3/f0;-><init>(Ls3/g0;)V

    invoke-direct {p1, p2}, Landroidx/media3/container/i;-><init>(Landroidx/media3/container/i$b;)V

    iput-object p1, p0, Ls3/g0;->d:Landroidx/media3/container/i;

    return-void
.end method

.method public static synthetic a(Ls3/g0;JLandroidx/media3/common/util/j0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls3/g0;->f(JLandroidx/media3/common/util/j0;)V

    return-void
.end method

.method private synthetic f(JLandroidx/media3/common/util/j0;)V
    .locals 1

    iget-object v0, p0, Ls3/g0;->c:[Ll2/s0;

    invoke-static {p1, p2, p3, v0}, Ll2/g;->a(JLandroidx/media3/common/util/j0;[Ll2/s0;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Ls3/g0;->d:Landroidx/media3/container/i;

    invoke-virtual {v0}, Landroidx/media3/container/i;->d()V

    return-void
.end method

.method public c(JLandroidx/media3/common/util/j0;)V
    .locals 1

    iget-object v0, p0, Ls3/g0;->d:Landroidx/media3/container/i;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/container/i;->a(JLandroidx/media3/common/util/j0;)V

    return-void
.end method

.method public d(Ll2/t;Ls3/l0$d;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ls3/g0;->c:[Ll2/s0;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Ls3/l0$d;->a()V

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v2

    iget-object v3, p0, Ls3/g0;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/r;

    iget-object v4, v3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v5, "application/cea-608"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption MIME type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    iget-object v5, v3, Landroidx/media3/common/r;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Ls3/l0$d;->b()Ljava/lang/String;

    move-result-object v5

    :goto_3
    new-instance v6, Landroidx/media3/common/r$b;

    invoke-direct {v6}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v6, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v5

    iget-object v6, p0, Ls3/g0;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget v5, v3, Landroidx/media3/common/r;->e:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v5, v3, Landroidx/media3/common/r;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget v5, v3, Landroidx/media3/common/r;->J:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v3, v3, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-virtual {v4, v3}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v3

    invoke-interface {v2, v3}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iget-object v3, p0, Ls3/g0;->c:[Ll2/s0;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Ls3/g0;->d:Landroidx/media3/container/i;

    invoke-virtual {v0}, Landroidx/media3/container/i;->d()V

    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Ls3/g0;->d:Landroidx/media3/container/i;

    invoke-virtual {v0, p1}, Landroidx/media3/container/i;->g(I)V

    return-void
.end method
