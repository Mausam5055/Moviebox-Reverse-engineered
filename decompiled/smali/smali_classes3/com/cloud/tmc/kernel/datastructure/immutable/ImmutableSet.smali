.class public Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableSet;
.super Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;

# interfaces
.implements Lcom/cloud/tmc/kernel/datastructure/immutable/Immutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection<",
        "TE;>;",
        "Lcom/cloud/tmc/kernel/datastructure/immutable/Immutable<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mutable()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableSet;->mutable()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mutable()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
