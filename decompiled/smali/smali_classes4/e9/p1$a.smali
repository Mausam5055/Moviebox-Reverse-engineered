.class final Le9/p1$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le9/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/k3$b;

.field private b:Lcom/google/common/collect/ImmutableList;

.field private c:Lcom/google/common/collect/ImmutableMap;

.field private d:Lcom/google/android/exoplayer2/source/o$b;

.field private e:Lcom/google/android/exoplayer2/source/o$b;

.field private f:Lcom/google/android/exoplayer2/source/o$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k3$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/p1$a;->a:Lcom/google/android/exoplayer2/k3$b;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Le9/p1$a;->c:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic a(Le9/p1$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method private b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Le9/p1$a;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p3, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/k3;

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    :cond_2
    :goto_0
    return-void
.end method

.method private static c(Lcom/google/android/exoplayer2/o2;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 10

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentPeriodIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k3;->q(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, p3}, Lcom/google/android/exoplayer2/k3;->j(ILcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/k3$b;->q()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/k3$b;->g(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->isPlayingAd()Z

    move-result v6

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentAdGroupIndex()I

    move-result v7

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Le9/p1$a;->i(Lcom/google/android/exoplayer2/source/o$b;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->isPlayingAd()Z

    move-result v6

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentAdGroupIndex()I

    move-result v7

    invoke-interface {p0}, Lcom/google/android/exoplayer2/o2;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Le9/p1$a;->i(Lcom/google/android/exoplayer2/source/o$b;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method private static i(Lcom/google/android/exoplayer2/source/o$b;Ljava/lang/Object;ZIII)Z
    .locals 1

    iget-object v0, p0, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lt9/j;->b:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lt9/j;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lt9/j;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lt9/j;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private m(Lcom/google/android/exoplayer2/k3;)V
    .locals 3

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    iget-object v1, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, v0, v1, p1}, Le9/p1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)V

    iget-object v1, p0, Le9/p1$a;->f:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v1, v2}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Le9/p1$a;->f:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, v0, v1, p1}, Le9/p1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)V

    :cond_0
    iget-object v1, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v1, v2}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, p0, Le9/p1$a;->f:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v1, v2}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, v0, v1, p1}, Le9/p1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, v0, v2, p1}, Le9/p1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, v0, v1, p1}, Le9/p1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Le9/p1$a;->c:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/android/exoplayer2/source/o$b;
    .locals 1

    iget-object v0, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    return-object v0
.end method

.method public e()Lcom/google/android/exoplayer2/source/o$b;
    .locals 1

    iget-object v0, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/o$b;

    :goto_0
    return-object v0
.end method

.method public f(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/k3;
    .locals 1

    iget-object v0, p0, Le9/p1$a;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/k3;

    return-object p1
.end method

.method public g()Lcom/google/android/exoplayer2/source/o$b;
    .locals 1

    iget-object v0, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    return-object v0
.end method

.method public h()Lcom/google/android/exoplayer2/source/o$b;
    .locals 1

    iget-object v0, p0, Le9/p1$a;->f:Lcom/google/android/exoplayer2/source/o$b;

    return-object v0
.end method

.method public j(Lcom/google/android/exoplayer2/o2;)V
    .locals 3

    iget-object v0, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, p0, Le9/p1$a;->a:Lcom/google/android/exoplayer2/k3$b;

    invoke-static {p1, v0, v1, v2}, Le9/p1$a;->c(Lcom/google/android/exoplayer2/o2;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    iput-object p1, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    return-void
.end method

.method public k(Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/o2;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/o$b;

    iput-object p1, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/o$b;

    iput-object p1, p0, Le9/p1$a;->f:Lcom/google/android/exoplayer2/source/o$b;

    :cond_0
    iget-object p1, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    if-nez p1, :cond_1

    iget-object p1, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v0, p0, Le9/p1$a;->a:Lcom/google/android/exoplayer2/k3$b;

    invoke-static {p3, p1, p2, v0}, Le9/p1$a;->c(Lcom/google/android/exoplayer2/o2;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    iput-object p1, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    :cond_1
    invoke-interface {p3}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    invoke-direct {p0, p1}, Le9/p1$a;->m(Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/o2;)V
    .locals 3

    iget-object v0, p0, Le9/p1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Le9/p1$a;->e:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, p0, Le9/p1$a;->a:Lcom/google/android/exoplayer2/k3$b;

    invoke-static {p1, v0, v1, v2}, Le9/p1$a;->c(Lcom/google/android/exoplayer2/o2;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v0

    iput-object v0, p0, Le9/p1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    invoke-direct {p0, p1}, Le9/p1$a;->m(Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method
