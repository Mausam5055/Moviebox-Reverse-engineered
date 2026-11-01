.class abstract Lcom/google/common/collect/i2;
.super Lcom/google/common/collect/p2;

# interfaces
.implements Lcom/google/common/collect/a4;


# instance fields
.field private transient a:Ljava/util/Comparator;

.field private transient b:Ljava/util/NavigableSet;

.field private transient c:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/p2;-><init>()V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i2;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i2;->a:Ljava/util/Comparator;

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/a4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i2;->b:Ljava/util/NavigableSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/b4$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b4$b;-><init>(Lcom/google/common/collect/a4;)V

    iput-object v0, p0, Lcom/google/common/collect/i2;->b:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->m()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i2;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/l3$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->lastEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/a4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->descendingMultiset()Lcom/google/common/collect/a4;

    move-result-object p1

    return-object p1
.end method

.method protected l()Lcom/google/common/collect/l3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/l3$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->firstEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/i2$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i2$a;-><init>(Lcom/google/common/collect/i2;)V

    return-object v0
.end method

.method abstract n()Ljava/util/Iterator;
.end method

.method abstract o()Lcom/google/common/collect/a4;
.end method

.method public pollFirstEntry()Lcom/google/common/collect/l3$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->pollLastEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/l3$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->pollFirstEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/a4;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->descendingMultiset()Lcom/google/common/collect/a4;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/a4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->descendingMultiset()Lcom/google/common/collect/a4;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/k2;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/k2;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
