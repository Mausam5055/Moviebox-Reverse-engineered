.class public final Landroidx/compose/ui/node/DepthSortedSet;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Lkotlin/Lazy;

.field private final c:Ljava/util/Comparator;

.field private final d:Landroidx/compose/ui/node/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;->INSTANCE:Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Lkotlin/Lazy;

    new-instance p1, Landroidx/compose/ui/node/DepthSortedSet$DepthComparator$1;

    invoke-direct {p1}, Landroidx/compose/ui/node/DepthSortedSet$DepthComparator$1;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->c:Ljava/util/Comparator;

    new-instance v0, Landroidx/compose/ui/node/TreeSet;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->d:Landroidx/compose/ui/node/TreeSet;

    return-void
.end method

.method private final c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.add called on an unattached node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->I()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->I()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "invalid node depth"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->d:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->d:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "inconsistency in TreeSet"

    invoke-static {p1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->d:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->d:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DepthSortedSet;->f(Landroidx/compose/ui/node/LayoutNode;)Z

    return-object v0
.end method

.method public final f(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.remove called on an unattached node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->d:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->I()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "invalid node depth"

    invoke-static {p1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->d:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
