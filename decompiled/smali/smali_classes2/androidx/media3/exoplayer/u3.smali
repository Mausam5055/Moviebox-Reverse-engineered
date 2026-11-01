.class final Landroidx/media3/exoplayer/u3;
.super Landroidx/media3/exoplayer/a;


# instance fields
.field private final h:I

.field private final i:I

.field private final j:[I

.field private final k:[I

.field private final l:[Landroidx/media3/common/e0;

.field private final m:[Ljava/lang/Object;

.field private final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lg2/v;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/exoplayer/u3;->G(Ljava/util/Collection;)[Landroidx/media3/common/e0;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/exoplayer/u3;->H(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/u3;-><init>([Landroidx/media3/common/e0;[Ljava/lang/Object;Lg2/v;)V

    return-void
.end method

.method private constructor <init>([Landroidx/media3/common/e0;[Ljava/lang/Object;Lg2/v;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/a;-><init>(ZLg2/v;)V

    array-length p3, p1

    iput-object p1, p0, Landroidx/media3/exoplayer/u3;->l:[Landroidx/media3/common/e0;

    new-array v1, p3, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/u3;->j:[I

    new-array p3, p3, [I

    iput-object p3, p0, Landroidx/media3/exoplayer/u3;->k:[I

    iput-object p2, p0, Landroidx/media3/exoplayer/u3;->m:[Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/u3;->n:Ljava/util/HashMap;

    array-length p3, p1

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v4, p1, v0

    iget-object v5, p0, Landroidx/media3/exoplayer/u3;->l:[Landroidx/media3/common/e0;

    aput-object v4, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/u3;->k:[I

    aput v1, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/u3;->j:[I

    aput v2, v5, v3

    invoke-virtual {v4}, Landroidx/media3/common/e0;->p()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/u3;->l:[Landroidx/media3/common/e0;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/media3/common/e0;->i()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/u3;->n:Ljava/util/HashMap;

    aget-object v5, p2, v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/u3;->h:I

    iput v2, p0, Landroidx/media3/exoplayer/u3;->i:I

    return-void
.end method

.method private static G(Ljava/util/Collection;)[Landroidx/media3/common/e0;
    .locals 4

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/e0;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/c3;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Landroidx/media3/exoplayer/c3;->b()Landroidx/media3/common/e0;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static H(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/c3;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Landroidx/media3/exoplayer/c3;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected A(I)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->k:[I

    aget p1, v0, p1

    return p1
.end method

.method protected D(I)Landroidx/media3/common/e0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->l:[Landroidx/media3/common/e0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public E(Lg2/v;)Landroidx/media3/exoplayer/u3;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->l:[Landroidx/media3/common/e0;

    array-length v0, v0

    new-array v0, v0, [Landroidx/media3/common/e0;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/u3;->l:[Landroidx/media3/common/e0;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Landroidx/media3/exoplayer/u3$a;

    aget-object v2, v2, v1

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/u3$a;-><init>(Landroidx/media3/exoplayer/u3;Landroidx/media3/common/e0;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/u3;

    iget-object v2, p0, Landroidx/media3/exoplayer/u3;->m:[Ljava/lang/Object;

    invoke-direct {v1, v0, v2, p1}, Landroidx/media3/exoplayer/u3;-><init>([Landroidx/media3/common/e0;[Ljava/lang/Object;Lg2/v;)V

    return-object v1
.end method

.method F()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->l:[Landroidx/media3/common/e0;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/u3;->i:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/u3;->h:I

    return v0
.end method

.method protected s(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected t(I)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->j:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Landroidx/media3/common/util/a1;->g([IIZZ)I

    move-result p1

    return p1
.end method

.method protected u(I)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->k:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Landroidx/media3/common/util/a1;->g([IIZZ)I

    move-result p1

    return p1
.end method

.method protected x(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->m:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected z(I)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/u3;->j:[I

    aget p1, v0, p1

    return p1
.end method
