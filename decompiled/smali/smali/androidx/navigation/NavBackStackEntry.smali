.class public final Landroidx/navigation/NavBackStackEntry;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/u;
.implements Landroidx/lifecycle/y0;
.implements Landroidx/lifecycle/m;
.implements Landroidx/savedstate/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavBackStackEntry$a;,
        Landroidx/navigation/NavBackStackEntry$b;,
        Landroidx/navigation/NavBackStackEntry$c;
    }
.end annotation


# static fields
.field public static final n:Landroidx/navigation/NavBackStackEntry$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroidx/navigation/NavDestination;

.field private final c:Landroid/os/Bundle;

.field private d:Landroidx/lifecycle/Lifecycle$State;

.field private final e:Landroidx/navigation/p;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/os/Bundle;

.field private h:Landroidx/lifecycle/w;

.field private final i:Landroidx/savedstate/d;

.field private j:Z

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private m:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavBackStackEntry$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavBackStackEntry$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/NavDestination;

    iput-object p3, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroid/os/Bundle;

    iput-object p4, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroidx/lifecycle/Lifecycle$State;

    iput-object p5, p0, Landroidx/navigation/NavBackStackEntry;->e:Landroidx/navigation/p;

    iput-object p6, p0, Landroidx/navigation/NavBackStackEntry;->f:Ljava/lang/String;

    iput-object p7, p0, Landroidx/navigation/NavBackStackEntry;->g:Landroid/os/Bundle;

    new-instance p1, Landroidx/lifecycle/w;

    invoke-direct {p1, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    invoke-static {p0}, Landroidx/savedstate/d;->a(Landroidx/savedstate/e;)Landroidx/savedstate/d;

    move-result-object p1

    const-string p2, "create(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/savedstate/d;

    new-instance p1, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;

    invoke-direct {p1, p0}, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->k:Lkotlin/Lazy;

    new-instance p1, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;

    invoke-direct {p1, p0}, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->l:Lkotlin/Lazy;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->a:Landroid/content/Context;

    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/NavDestination;

    iget-object v5, p1, Landroidx/navigation/NavBackStackEntry;->d:Landroidx/lifecycle/Lifecycle$State;

    iget-object v6, p1, Landroidx/navigation/NavBackStackEntry;->e:Landroidx/navigation/p;

    iget-object v7, p1, Landroidx/navigation/NavBackStackEntry;->f:Ljava/lang/String;

    iget-object v8, p1, Landroidx/navigation/NavBackStackEntry;->g:Landroid/os/Bundle;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p2, p1, Landroidx/navigation/NavBackStackEntry;->d:Landroidx/lifecycle/Lifecycle$State;

    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroidx/lifecycle/Lifecycle$State;

    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/navigation/NavBackStackEntry;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/navigation/NavBackStackEntry;)Landroidx/lifecycle/w;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/navigation/NavBackStackEntry;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/NavBackStackEntry;->j:Z

    return p0
.end method

.method private final e()Landroidx/lifecycle/q0;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/q0;

    return-object v0
.end method


# virtual methods
.method public final d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    instance-of v1, p1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->f:Ljava/lang/String;

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/NavDestination;

    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/NavDestination;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/c;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/c;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroid/os/Bundle;

    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->c:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :cond_7
    :goto_2
    return v0
.end method

.method public final f()Landroidx/navigation/NavDestination;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->f:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic getDefaultViewModelCreationExtras()Lp1/a;
    .locals 1

    invoke-static {p0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/m;)Lp1/a;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0$c;
    .locals 1

    invoke-direct {p0}, Landroidx/navigation/NavBackStackEntry;->e()Landroidx/lifecycle/q0;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/c;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/savedstate/d;

    invoke-virtual {v0}, Landroidx/savedstate/d;->b()Landroidx/savedstate/c;

    move-result-object v0

    const-string v1, "savedStateRegistryController.savedStateRegistry"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x0;
    .locals 2

    iget-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    invoke-virtual {v0}, Landroidx/lifecycle/w;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->e:Landroidx/navigation/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/navigation/p;->a(Ljava/lang/String;)Landroidx/lifecycle/x0;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot access the NavBackStackEntry\'s ViewModels after the NavBackStackEntry is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot access the NavBackStackEntry\'s ViewModels until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/NavDestination;

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    const-string v0, "event.targetState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->m()V

    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/savedstate/d;

    invoke-virtual {v0, p1}, Landroidx/savedstate/d;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public final k(Landroidx/navigation/NavDestination;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/NavDestination;

    return-void
.end method

.method public final l(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    const-string v0, "maxState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->m()V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/savedstate/d;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/savedstate/d;->d(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->j:Z

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroidx/lifecycle/w;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    :goto_0
    return-void
.end method
