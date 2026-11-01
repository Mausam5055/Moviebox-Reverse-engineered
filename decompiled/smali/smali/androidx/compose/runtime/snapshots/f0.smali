.class final Landroidx/compose/runtime/snapshots/f0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/List;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# instance fields
.field private final a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput p2, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    sub-int/2addr p3, p2

    iput p3, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    return-void
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    return v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    iget-object p2, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p2

    iput p2, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/snapshots/f0;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public c(I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    return-object p1
.end method

.method public clear()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->j(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/f0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/f0;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/snapshots/s;->d(II)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget v0, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->a()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    sub-int/2addr v1, p1

    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget v0, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/f0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance p1, Landroidx/compose/runtime/snapshots/f0$a;

    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/snapshots/f0$a;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/snapshots/f0;)V

    return-object p1
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/f0;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/f0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/f0;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/f0;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->l(Ljava/util/Collection;II)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/snapshots/f0;->d:I

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/snapshots/s;->d(II)V

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p2

    iput p2, p0, Landroidx/compose/runtime/snapshots/f0;->c:I

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->a()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/f0;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "fromIndex or toIndex are out of bounds"

    invoke-static {v0}, Landroidx/compose/runtime/o1;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/f0;->e()V

    new-instance v0, Landroidx/compose/runtime/snapshots/f0;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/f0;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v2, p0, Landroidx/compose/runtime/snapshots/f0;->b:I

    add-int/2addr p1, v2

    add-int/2addr p2, v2

    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/runtime/snapshots/f0;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
