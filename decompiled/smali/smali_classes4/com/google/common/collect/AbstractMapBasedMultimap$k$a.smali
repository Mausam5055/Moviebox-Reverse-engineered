.class Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;

.field final b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/common/collect/AbstractMapBasedMultimap$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->b:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$100(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->a:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$k;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->b:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->f()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->b()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->e:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->c:Lcom/google/common/collect/AbstractMapBasedMultimap$k;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->g()V

    return-void
.end method
