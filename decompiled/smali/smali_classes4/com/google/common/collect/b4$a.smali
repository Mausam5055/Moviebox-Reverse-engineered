.class abstract Lcom/google/common/collect/b4$a;
.super Lcom/google/common/collect/Multisets$c;

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/a4;


# direct methods
.method constructor <init>(Lcom/google/common/collect/a4;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$c;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/b4$a;->a:Lcom/google/common/collect/a4;

    return-void
.end method


# virtual methods
.method bridge synthetic a()Lcom/google/common/collect/l3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/google/common/collect/a4;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b4$a;->a:Lcom/google/common/collect/a4;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->firstEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b4;->a(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/a4;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->elementSet()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->lastEntry()Lcom/google/common/collect/l3$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b4;->a(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/common/collect/a4;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->elementSet()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/b4$a;->b()Lcom/google/common/collect/a4;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/a4;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/a4;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/a4;->elementSet()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
