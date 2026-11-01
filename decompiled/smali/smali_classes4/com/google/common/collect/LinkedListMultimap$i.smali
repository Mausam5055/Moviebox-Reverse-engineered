.class Lcom/google/common/collect/LinkedListMultimap$i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/LinkedListMultimap$g;

.field d:Lcom/google/common/collect/LinkedListMultimap$g;

.field e:Lcom/google/common/collect/LinkedListMultimap$g;

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->a:Lcom/google/common/collect/LinkedListMultimap$g;

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 3

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    :goto_0
    invoke-static {p3, v0}, Lcom/google/common/base/m;->r(II)I

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    :goto_1
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    :goto_2
    add-int/lit8 p1, p3, 0x1

    if-ge p3, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$i;->previous()Ljava/lang/Object;

    move p3, p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->a:Lcom/google/common/collect/LinkedListMultimap$g;

    :goto_3
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    :goto_4
    add-int/lit8 p1, p3, -0x1

    if-lez p3, :cond_4

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$i;->next()Ljava/lang/Object;

    move p3, p1

    goto :goto_4

    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->a:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$g;)Lcom/google/common/collect/LinkedListMultimap$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eq v0, v2, :cond_1

    iget-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iget v2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/LinkedListMultimap$i;->b:I

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$i;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$i;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Ljava/lang/Object;

    return-void
.end method
