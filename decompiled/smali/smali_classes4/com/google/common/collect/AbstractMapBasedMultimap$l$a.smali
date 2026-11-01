.class Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/AbstractMapBasedMultimap$l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$l;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$k;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$l;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$l;

    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$l;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$k;Ljava/util/Iterator;)V

    return-void
.end method

.method private c()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$k$a;->a()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$l;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->c()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$l;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$l;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->d:Lcom/google/common/collect/AbstractMapBasedMultimap$l;

    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$k;->a()V

    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$l$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
