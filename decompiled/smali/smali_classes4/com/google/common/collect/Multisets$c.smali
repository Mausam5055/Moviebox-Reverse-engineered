.class abstract Lcom/google/common/collect/Multisets$c;
.super Lcom/google/common/collect/Sets$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Sets$e;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/l3;
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$c;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$c;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/l3;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$c;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/l3;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$c;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$c;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/l3;->remove(Ljava/lang/Object;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$c;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
