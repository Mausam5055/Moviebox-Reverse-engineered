.class Lcom/google/common/collect/b4$b;
.super Lcom/google/common/collect/b4$a;

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/a4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/b4$a;-><init>(Lcom/google/common/collect/a4;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/a4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->firstEntry()Lcom/google/common/collect/l3$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/b4;->b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$b;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lcom/google/common/collect/b4$b;

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/a4;->descendingMultiset()Lcom/google/common/collect/a4;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/b4$b;-><init>(Lcom/google/common/collect/a4;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/a4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->lastEntry()Lcom/google/common/collect/l3$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/b4;->b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lcom/google/common/collect/b4$b;

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/a4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/b4$b;-><init>(Lcom/google/common/collect/a4;)V

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/a4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->firstEntry()Lcom/google/common/collect/l3$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/b4;->b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/a4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->lastEntry()Lcom/google/common/collect/l3$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/b4;->b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->pollFirstEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b4;->b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->pollLastEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b4;->b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lcom/google/common/collect/b4$b;

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/common/collect/a4;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/b4$b;-><init>(Lcom/google/common/collect/a4;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lcom/google/common/collect/b4$b;

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/a4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/b4$b;-><init>(Lcom/google/common/collect/a4;)V

    return-object v0
.end method
