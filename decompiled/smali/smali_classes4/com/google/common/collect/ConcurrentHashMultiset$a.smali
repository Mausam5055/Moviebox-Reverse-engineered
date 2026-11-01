.class Lcom/google/common/collect/ConcurrentHashMultiset$a;
.super Lcom/google/common/collect/s2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->createElementSet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->a:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/s2;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->a:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/f2;->c(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/k2;->standardContainsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->a:Ljava/util/Set;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->a:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/f2;->d(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s2;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
