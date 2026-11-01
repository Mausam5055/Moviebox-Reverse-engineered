.class final Landroidx/compose/runtime/snapshots/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# instance fields
.field private final a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    const/4 p2, -0x1

    iput p2, p0, Landroidx/compose/runtime/snapshots/w;->c:I

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/w;->d:I

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/snapshots/w;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/w;->a()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/w;->c:I

    iget p1, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/w;->d:I

    return-void
.end method

.method public hasNext()Z
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/w;->a()V

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/snapshots/w;->c:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/s;->d(II)V

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    return-object v1
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/w;->a()V

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/s;->d(II)V

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    iput v0, p0, Landroidx/compose/runtime/snapshots/w;->c:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    return v0
.end method

.method public remove()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/w;->a()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/snapshots/w;->b:I

    iput v1, p0, Landroidx/compose/runtime/snapshots/w;->c:I

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/snapshots/w;->d:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/w;->a()V

    iget v0, p0, Landroidx/compose/runtime/snapshots/w;->c:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/w;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->e()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/w;->d:I

    return-void

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/s;->b()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
