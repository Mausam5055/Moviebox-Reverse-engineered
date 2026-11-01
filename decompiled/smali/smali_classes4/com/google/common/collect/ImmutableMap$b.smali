.class public Lcom/google/common/collect/ImmutableMap$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMap$b$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Comparator;

.field b:[Ljava/lang/Object;

.field c:I

.field d:Z

.field e:Lcom/google/common/collect/ImmutableMap$b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    return-void
.end method

.method private b(Z)Lcom/google/common/collect/ImmutableMap;
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->e:Lcom/google/common/collect/ImmutableMap$b$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b$a;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    if-nez p1, :cond_4

    iget v3, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    invoke-direct {p0, v1, v3}, Lcom/google/common/collect/ImmutableMap$b;->g([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v3, v1

    iget-object v4, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    array-length v0, v1

    ushr-int/2addr v0, v2

    :cond_4
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    invoke-static {v1, v0, v3}, Lcom/google/common/collect/ImmutableMap$b;->l([Ljava/lang/Object;ILjava/util/Comparator;)V

    :goto_1
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    invoke-static {v0, v1, p0}, Lcom/google/common/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/common/collect/ImmutableMap$b;->e:Lcom/google/common/collect/ImmutableMap$b$a;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$b$a;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private f(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v1, v0

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$b;->f(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    :cond_0
    return-void
.end method

.method private g([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    add-int/lit8 v2, p2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    sub-int v0, p2, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    mul-int/lit8 v4, p2, 0x2

    if-ge v2, v4, :cond_4

    ushr-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v5, v0, v4

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method static l([Ljava/lang/Object;ILjava/util/Comparator;)V
    .locals 6

    new-array v0, p1, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object p2

    invoke-static {}, Lcom/google/common/collect/Maps;->C()Lcom/google/common/base/f;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/f;)Lcom/google/common/collect/Ordering;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_1
    if-ge v1, p1, :cond_1

    mul-int/lit8 p2, v1, 0x2

    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p0, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->b(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->b(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method e(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 5

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget v1, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->f(I)V

    iget-object v0, p1, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget p1, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->f(I)V

    invoke-static {p1, p2}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    return-object p0
.end method

.method public i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->f(I)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object p1

    return-object p1
.end method
