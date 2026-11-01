.class public Lcom/google/common/collect/ImmutableSortedMap$a;
.super Lcom/google/common/collect/ImmutableMap$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private transient f:[Ljava/lang/Object;

.field private transient g:[Ljava/lang/Object;

.field private final h:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap$a;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->h:Ljava/util/Comparator;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    return-void
.end method

.method private f(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v0, v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->f(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$a;->m()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$a;->n()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$a;->o()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$a;->r(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$a;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$a;->t(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$a;

    move-result-object p1

    return-object p1
.end method

.method public m()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$a;->o()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableSortedMap.Builder does not yet implement buildKeepingLast()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 7

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->h:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    new-array v2, v2, [Ljava/lang/Object;

    :goto_0
    iget v3, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    if-ge v1, v3, :cond_2

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->h:Ljava/util/Comparator;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v0, v4

    aget-object v6, v0, v1

    invoke-interface {v3, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keys required to be distinct but compared as equal: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->h:Ljava/util/Comparator;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/common/collect/ImmutableSortedMap;

    new-instance v3, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->h:Ljava/util/Comparator;

    invoke-direct {v3, v0, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->h:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->h:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method p(Lcom/google/common/collect/ImmutableSortedMap$a;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 5

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget v1, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap$a;->f(I)V

    iget-object v0, p1, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget v3, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget v3, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget p1, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    return-object p0
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap$a;->f(I)V

    invoke-static {p1, p2}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->f:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->g:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    return-object p0
.end method

.method public r(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public t(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method
