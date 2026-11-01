.class Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;
.super Lcom/google/common/collect/AbstractIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet$AsSet;->iterator()Lcom/google/common/collect/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final c:Ljava/util/Iterator;

.field d:Ljava/util/Iterator;

.field final synthetic e:Lcom/google/common/collect/ImmutableRangeSet$AsSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->e:Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->c:Ljava/util/Iterator;

    invoke-static {}, Lcom/google/common/collect/Iterators;->h()Lcom/google/common/collect/r4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->d()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/Comparable;
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->e:Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->access$100(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)Lcom/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->d:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method
