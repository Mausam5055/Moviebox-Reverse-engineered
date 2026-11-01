.class public final Lcom/google/common/collect/ImmutableBiMap$a;
.super Lcom/google/common/collect/ImmutableMap$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->m()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->n()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->o()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic e(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->p(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableBiMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->r(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->t(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public m()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->o()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported for bimaps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Lcom/google/common/collect/ImmutableBiMap;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$b;->l([Ljava/lang/Object;ILjava/util/Comparator;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method p(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->e(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public r(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public t(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method
