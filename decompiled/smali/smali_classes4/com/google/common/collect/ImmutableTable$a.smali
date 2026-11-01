.class public final Lcom/google/common/collect/ImmutableTable$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ljava/util/Comparator;

.field private c:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->i()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableTable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable$a;->b()Lcom/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/common/collect/ImmutableTable;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$a;->b:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$a;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableTable;->forCells(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableTable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/SingletonImmutableTable;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/g3;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/c4$a;

    invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableTable;-><init>(Lcom/google/common/collect/c4$a;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableTable;->of()Lcom/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method c(Lcom/google/common/collect/ImmutableTable$a;)Lcom/google/common/collect/ImmutableTable$a;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public d(Lcom/google/common/collect/c4$a;)Lcom/google/common/collect/ImmutableTable$a;
    .locals 2

    instance-of v0, p1, Lcom/google/common/collect/Tables$ImmutableCell;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "row"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "column"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/common/collect/ImmutableTable$a;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$a;

    :goto_0
    return-object p0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$a;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$a;->a:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/c4$a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
