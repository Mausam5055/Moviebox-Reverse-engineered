.class final Landroidx/compose/runtime/collection/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/List;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/collection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iput p2, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    iput p3, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p1}, Landroidx/compose/runtime/collection/c;->a(Ljava/util/List;I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    return-object p1
.end method

.method public clear()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    if-gt v1, v0, :cond_0

    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    iput v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/b$b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p1}, Landroidx/compose/runtime/collection/c;->a(Ljava/util/List;I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/collection/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/collection/b$c;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    if-gt v1, v0, :cond_1

    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/collection/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/collection/b$c;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/collection/b$c;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/collection/b$c;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/b$b;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/collection/b$b;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    if-gt v2, v1, :cond_1

    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v3, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    :cond_0
    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/compose/runtime/collection/b$b;->c:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p1}, Landroidx/compose/runtime/collection/c;->a(Ljava/util/List;I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/b$b;->a:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/b$b;->b:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/b$b;->a()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/collection/c;->b(Ljava/util/List;II)V

    new-instance v0, Landroidx/compose/runtime/collection/b$b;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/runtime/collection/b$b;-><init>(Ljava/util/List;II)V

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
