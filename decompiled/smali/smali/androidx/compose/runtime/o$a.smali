.class final Landroidx/compose/runtime/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/a2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private e:Landroidx/collection/MutableScatterSet;

.field private final f:Ljava/util/List;

.field private final g:Landroidx/collection/d0;

.field private final h:Landroidx/collection/d0;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    new-instance p1, Landroidx/collection/d0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/o$a;->g:Landroidx/collection/d0;

    new-instance p1, Landroidx/collection/d0;

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    return-void
.end method

.method private final i(I)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    move v3, v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_0
    iget-object v7, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    invoke-virtual {v7}, Landroidx/collection/m;->b()I

    move-result v7

    const-string v8, "null cannot be cast to non-null type androidx.collection.MutableIntList"

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    invoke-virtual {v7, v3}, Landroidx/collection/m;->a(I)I

    move-result v7

    if-gt p1, v7, :cond_1

    iget-object v7, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v9, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    invoke-virtual {v9, v3}, Landroidx/collection/d0;->i(I)I

    move-result v9

    iget-object v10, p0, Landroidx/compose/runtime/o$a;->g:Landroidx/collection/d0;

    invoke-virtual {v10, v3}, Landroidx/collection/d0;->i(I)I

    move-result v10

    if-nez v4, :cond_0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v7, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v6, Landroidx/collection/d0;

    invoke-direct {v6, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v9}, Landroidx/collection/d0;->e(I)Z

    new-instance v5, Landroidx/collection/d0;

    invoke-direct {v5, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v10}, Landroidx/collection/d0;->e(I)Z

    goto :goto_0

    :cond_0
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v9}, Landroidx/collection/d0;->e(I)Z

    invoke-virtual {v5, v10}, Landroidx/collection/d0;->e(I)Z

    goto :goto_0

    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_7

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1
    if-ge v0, p1, :cond_6

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move v7, v2

    :goto_2
    if-ge v7, v3, :cond_5

    invoke-virtual {v6, v0}, Landroidx/collection/m;->a(I)I

    move-result v8

    invoke-virtual {v6, v7}, Landroidx/collection/m;->a(I)I

    move-result v9

    if-lt v8, v9, :cond_3

    if-ne v9, v8, :cond_4

    invoke-virtual {v5, v0}, Landroidx/collection/m;->a(I)I

    move-result v8

    invoke-virtual {v5, v7}, Landroidx/collection/m;->a(I)I

    move-result v9

    if-ge v8, v9, :cond_4

    :cond_3
    invoke-static {v4, v0, v7}, Landroidx/compose/runtime/p;->e(Ljava/util/List;II)V

    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/p;->d(Landroidx/collection/d0;II)V

    invoke-static {v6, v0, v7}, Landroidx/compose/runtime/p;->d(Landroidx/collection/d0;II)V

    :cond_4
    add-int/2addr v7, v1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method private final j(Ljava/lang/Object;III)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/compose/runtime/o$a;->i(I)V

    if-ltz p4, :cond_0

    if-ge p4, p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/runtime/o$a;->g:Landroidx/collection/d0;

    invoke-virtual {p1, p3}, Landroidx/collection/d0;->e(I)Z

    iget-object p1, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    invoke-virtual {p1, p4}, Landroidx/collection/d0;->e(I)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroidx/compose/runtime/h;III)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/o$a;->e:Landroidx/collection/MutableScatterSet;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/o$a;->e:Landroidx/collection/MutableScatterSet;

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->w(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/o$a;->j(Ljava/lang/Object;III)V

    return-void
.end method

.method public c(Landroidx/compose/runtime/b2;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroidx/compose/runtime/h;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/o$a;->j(Ljava/lang/Object;III)V

    return-void
.end method

.method public e(Landroidx/compose/runtime/b2;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/o$a;->j(Ljava/lang/Object;III)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Compose:abandons"

    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/b2;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v2}, Landroidx/compose/runtime/b2;->onAbandoned()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method public final g()V
    .locals 6

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    invoke-direct {p0, v1}, Landroidx/compose/runtime/o$a;->i(I)V

    iget-object v1, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Compose:onForgotten"

    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/o$a;->e:Landroidx/collection/MutableScatterSet;

    iget-object v3, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ge v0, v3, :cond_3

    iget-object v4, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/compose/runtime/b2;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v5, v4

    check-cast v5, Landroidx/compose/runtime/b2;

    invoke-interface {v5}, Landroidx/compose/runtime/b2;->onForgotten()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    instance-of v5, v4, Landroidx/compose/runtime/h;

    if-eqz v5, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v4, Landroidx/compose/runtime/h;

    invoke-interface {v4}, Landroidx/compose/runtime/h;->onRelease()V

    goto :goto_2

    :cond_1
    check-cast v4, Landroidx/compose/runtime/h;

    invoke-interface {v4}, Landroidx/compose/runtime/h;->onDeactivate()V

    :cond_2
    :goto_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_4
    iget-object v0, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Compose:onRemembered"

    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/b2;

    iget-object v5, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Landroidx/compose/runtime/b2;->onRemembered()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    goto :goto_7

    :goto_6
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    throw v1

    :cond_6
    :goto_7
    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Compose:sideeffects"

    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_2
    return-void
.end method
