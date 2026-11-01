.class Lcom/google/common/collect/Iterators$b;
.super Lcom/google/common/collect/AbstractIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->k(Ljava/util/Iterator;Lcom/google/common/base/n;)Lcom/google/common/collect/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/base/n;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Iterators$b;->c:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/Iterators$b;->d:Lcom/google/common/base/n;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/Iterators$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Iterators$b;->d:Lcom/google/common/base/n;

    invoke-interface {v1, v0}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
