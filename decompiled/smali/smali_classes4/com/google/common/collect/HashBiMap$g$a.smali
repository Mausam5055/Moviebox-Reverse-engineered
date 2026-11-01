.class Lcom/google/common/collect/HashBiMap$g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$g;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field final synthetic e:Lcom/google/common/collect/HashBiMap$g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$g;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$g$a;->e:Lcom/google/common/collect/HashBiMap$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->b:I

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    iget v0, p1, Lcom/google/common/collect/HashBiMap;->modCount:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->c:I

    iget p1, p1, Lcom/google/common/collect/HashBiMap;->size:I

    iput p1, p0, Lcom/google/common/collect/HashBiMap$g$a;->d:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->e:Lcom/google/common/collect/HashBiMap$g;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    iget v0, v0, Lcom/google/common/collect/HashBiMap;->modCount:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$g$a;->a()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$g$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->e:Lcom/google/common/collect/HashBiMap$g;

    iget v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBiMap$g;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    iput v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->b:I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->e:Lcom/google/common/collect/HashBiMap$g;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->d:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$g$a;->a()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/e2;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->e:Lcom/google/common/collect/HashBiMap$g;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    iget v2, p0, Lcom/google/common/collect/HashBiMap$g$a;->b:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/HashBiMap;->removeEntry(I)V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$g$a;->e:Lcom/google/common/collect/HashBiMap$g;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    iget v3, v2, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->b:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->a:I

    :cond_1
    iput v1, p0, Lcom/google/common/collect/HashBiMap$g$a;->b:I

    iget v0, v2, Lcom/google/common/collect/HashBiMap;->modCount:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$g$a;->c:I

    return-void
.end method
