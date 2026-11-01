.class abstract Lcom/google/common/collect/MapMakerInternalMap$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Lcom/google/common/collect/MapMakerInternalMap$Segment;

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field e:Lcom/google/common/collect/MapMakerInternalMap$h;

.field f:Lcom/google/common/collect/MapMakerInternalMap$w;

.field g:Lcom/google/common/collect/MapMakerInternalMap$w;

.field final synthetic h:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->h:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->b:I

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$g;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->f:Lcom/google/common/collect/MapMakerInternalMap$w;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->a:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->h:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->c:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->c:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->b:I

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method b(Lcom/google/common/collect/MapMakerInternalMap$h;)Z
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$h;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->h:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$h;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$w;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->h:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$w;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->f:Lcom/google/common/collect/MapMakerInternalMap$w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->c:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->c:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p1, 0x0

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->c:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw p1
.end method

.method c()Lcom/google/common/collect/MapMakerInternalMap$w;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->f:Lcom/google/common/collect/MapMakerInternalMap$w;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->g:Lcom/google/common/collect/MapMakerInternalMap$w;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$g;->a()V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->g:Lcom/google/common/collect/MapMakerInternalMap$w;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->e:Lcom/google/common/collect/MapMakerInternalMap$h;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$h;->k()Lcom/google/common/collect/MapMakerInternalMap$h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->e:Lcom/google/common/collect/MapMakerInternalMap$h;

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->e:Lcom/google/common/collect/MapMakerInternalMap$h;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$g;->b(Lcom/google/common/collect/MapMakerInternalMap$h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->e:Lcom/google/common/collect/MapMakerInternalMap$h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->b:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$h;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->e:Lcom/google/common/collect/MapMakerInternalMap$h;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$g;->b(Lcom/google/common/collect/MapMakerInternalMap$h;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->f:Lcom/google/common/collect/MapMakerInternalMap$w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->g:Lcom/google/common/collect/MapMakerInternalMap$w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/e2;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->h:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->g:Lcom/google/common/collect/MapMakerInternalMap$w;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$w;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$g;->g:Lcom/google/common/collect/MapMakerInternalMap$w;

    return-void
.end method
