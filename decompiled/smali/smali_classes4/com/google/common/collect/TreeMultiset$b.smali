.class Lcom/google/common/collect/TreeMultiset$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/google/common/collect/TreeMultiset$e;

.field b:Lcom/google/common/collect/l3$a;

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/l3$a;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1500(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/l3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/l3$a;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$1600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$1400(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$e;

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->a()Lcom/google/common/collect/l3$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/l3$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/l3$a;

    invoke-interface {v2}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/l3$a;

    return-void
.end method
