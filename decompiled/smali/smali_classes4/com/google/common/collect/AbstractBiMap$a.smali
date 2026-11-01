.class Lcom/google/common/collect/AbstractBiMap$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractBiMap;->entrySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$a;->b:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$a;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$a;->a:Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/AbstractBiMap$b;

    iget-object v2, p0, Lcom/google/common/collect/AbstractBiMap$a;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/AbstractBiMap$b;-><init>(Lcom/google/common/collect/AbstractBiMap;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$a;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$a;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractBiMap;->access$600(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$a;->a:Ljava/util/Map$Entry;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
