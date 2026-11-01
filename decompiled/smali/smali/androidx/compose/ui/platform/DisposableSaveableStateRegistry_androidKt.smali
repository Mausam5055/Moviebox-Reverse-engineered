.class public abstract Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Parcelable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Landroid/util/SparseArray;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Binder;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Landroid/util/Size;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Landroid/util/SizeF;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->a:[Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/saveable/b;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->d(Landroidx/compose/runtime/saveable/b;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/view/View;Landroidx/savedstate/e;)Landroidx/compose/ui/platform/u0;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    sget v0, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->c(Ljava/lang/String;Landroidx/savedstate/e;)Landroidx/compose/ui/platform/u0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;Landroidx/savedstate/e;)Landroidx/compose/ui/platform/u0;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/compose/runtime/saveable/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Landroidx/savedstate/e;->getSavedStateRegistry()Landroidx/savedstate/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/savedstate/c;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->h(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1;->INSTANCE:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/b;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroidx/compose/ui/platform/v0;

    invoke-direct {v1, v0}, Landroidx/compose/ui/platform/v0;-><init>(Landroidx/compose/runtime/saveable/b;)V

    invoke-virtual {p1, p0, v1}, Landroidx/savedstate/c;->h(Ljava/lang/String;Landroidx/savedstate/c$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Landroidx/compose/ui/platform/u0;

    new-instance v3, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;

    invoke-direct {v3, v1, p1, p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;-><init>(ZLandroidx/savedstate/c;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Landroidx/compose/ui/platform/u0;-><init>(Landroidx/compose/runtime/saveable/b;Lkotlin/jvm/functions/Function0;)V

    return-object v2
.end method

.method private static final d(Landroidx/compose/runtime/saveable/b;)Landroid/os/Bundle;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/saveable/b;->e()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->g(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->f(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final f(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p0, Landroidx/compose/runtime/snapshots/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Landroidx/compose/runtime/snapshots/r;

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/r;->getPolicy()Landroidx/compose/runtime/q2;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/r2;->g()Landroidx/compose/runtime/q2;

    move-result-object v3

    if-eq v0, v3, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/r;->getPolicy()Landroidx/compose/runtime/q2;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/r2;->j()Landroidx/compose/runtime/q2;

    move-result-object v3

    if-eq v0, v3, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/r;->getPolicy()Landroidx/compose/runtime/q2;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/r2;->h()Landroidx/compose/runtime/q2;

    move-result-object v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->f(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    :cond_3
    instance-of v0, p0, Lkotlin/Function;

    if-eqz v0, :cond_4

    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_4

    return v2

    :cond_4
    sget-object v0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->a:[Ljava/lang/Class;

    array-length v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    invoke-virtual {v5, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return v2
.end method

.method private static final g(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static final h(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type java.util.ArrayList<kotlin.Any?>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.Any?> }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
