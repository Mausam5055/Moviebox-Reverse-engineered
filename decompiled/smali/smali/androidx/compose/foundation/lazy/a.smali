.class final Landroidx/compose/foundation/lazy/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/lazy/r;


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroidx/compose/foundation/lazy/layout/x$b;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/foundation/lazy/a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/a;->a:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/foundation/lazy/layout/d0;I)V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/a;->a:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/layout/d0;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroidx/compose/foundation/lazy/p;FLandroidx/compose/foundation/lazy/l;)V
    .locals 3

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/j;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/j;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_5

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->d()I

    move-result v1

    if-ge v2, v1, :cond_5

    iget v1, p0, Landroidx/compose/foundation/lazy/a;->b:I

    if-eq v2, v1, :cond_3

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/a;->d:Z

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/x$b;->cancel()V

    :cond_2
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/a;->d:Z

    iput v2, p0, Landroidx/compose/foundation/lazy/a;->b:I

    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/p;->a(I)Landroidx/compose/foundation/lazy/layout/x$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/j;

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->f()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->g()I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->getSize()I

    move-result p1

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->c()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    neg-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/x$b;->a()V

    goto :goto_2

    :cond_4
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/j;

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->g()I

    move-result p3

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->g()I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/x$b;->a()V

    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic c()Landroidx/compose/foundation/lazy/layout/i0;
    .locals 1

    invoke-static {p0}, Landroidx/compose/foundation/lazy/q;->a(Landroidx/compose/foundation/lazy/r;)Landroidx/compose/foundation/lazy/layout/i0;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroidx/compose/foundation/lazy/p;Landroidx/compose/foundation/lazy/l;)V
    .locals 1

    iget p1, p0, Landroidx/compose/foundation/lazy/a;->b:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/a;->d:Z

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/j;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/j;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget p2, p0, Landroidx/compose/foundation/lazy/a;->b:I

    if-eq p2, p1, :cond_2

    iput v0, p0, Landroidx/compose/foundation/lazy/a;->b:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/x$b;->cancel()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    :cond_2
    return-void
.end method
