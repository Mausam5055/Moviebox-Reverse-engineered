.class Lcom/google/common/collect/Iterators$f;
.super Lcom/google/common/collect/r4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/r4;-><init>()V

    new-instance v0, Lcom/google/common/collect/h3;

    invoke-direct {v0, p2}, Lcom/google/common/collect/h3;-><init>(Ljava/util/Comparator;)V

    new-instance p2, Ljava/util/PriorityQueue;

    const/4 v1, 0x2

    invoke-direct {p2, v1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p2, p0, Lcom/google/common/collect/Iterators$f;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Iterators$f;->a:Ljava/util/Queue;

    invoke-static {p2}, Lcom/google/common/collect/Iterators;->s(Ljava/util/Iterator;)Lcom/google/common/collect/q3;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Ljava/util/Comparator;Lcom/google/common/collect/q3;Lcom/google/common/collect/q3;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Iterators$f;->b(Ljava/util/Comparator;Lcom/google/common/collect/q3;Lcom/google/common/collect/q3;)I

    move-result p0

    return p0
.end method

.method private static synthetic b(Ljava/util/Comparator;Lcom/google/common/collect/q3;Lcom/google/common/collect/q3;)I
    .locals 0

    invoke-interface {p1}, Lcom/google/common/collect/q3;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/common/collect/q3;->peek()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Iterators$f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Iterators$f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q3;

    invoke-interface {v0}, Lcom/google/common/collect/q3;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Iterators$f;->a:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method
