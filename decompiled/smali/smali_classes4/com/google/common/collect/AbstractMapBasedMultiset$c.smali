.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    invoke-virtual {v0}, Lcom/google/common/collect/o3;->e()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    iget p1, p1, Lcom/google/common/collect/o3;->d:I

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    iget v0, v0, Lcom/google/common/collect/o3;->d:I

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract b(I)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a()V

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a:I

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v2, v2, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/o3;->s(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a()V

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/e2;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-wide v2, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    iget-object v4, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    iget v5, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    invoke-virtual {v4, v5}, Lcom/google/common/collect/o3;->x(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    iget v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a:I

    iget v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/o3;->t(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->a:I

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->b:I

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->d:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    iget v0, v0, Lcom/google/common/collect/o3;->d:I

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$c;->c:I

    return-void
.end method
