.class public abstract Landroidx/navigation/NavController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$NavControllerNavigatorState;,
        Landroidx/navigation/NavController$a;
    }
.end annotation


# static fields
.field public static final G:Landroidx/navigation/NavController$a;

.field private static H:Z


# instance fields
.field private final A:Ljava/util/Map;

.field private B:I

.field private final C:Ljava/util/List;

.field private final D:Lkotlin/Lazy;

.field private final E:Lkotlinx/coroutines/flow/x0;

.field private final F:Lkotlinx/coroutines/flow/b;

.field private final a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private c:Landroidx/navigation/k;

.field private d:Landroidx/navigation/NavGraph;

.field private e:Landroid/os/Bundle;

.field private f:[Landroid/os/Parcelable;

.field private g:Z

.field private final h:Lkotlin/collections/ArrayDeque;

.field private final i:Lkotlinx/coroutines/flow/y0;

.field private final j:Lkotlinx/coroutines/flow/i1;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private o:Landroidx/lifecycle/u;

.field private p:Landroidx/activity/OnBackPressedDispatcher;

.field private q:Landroidx/navigation/f;

.field private final r:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private s:Landroidx/lifecycle/Lifecycle$State;

.field private final t:Landroidx/lifecycle/t;

.field private final u:Landroidx/activity/u;

.field private v:Z

.field private w:Landroidx/navigation/q;

.field private final x:Ljava/util/Map;

.field private y:Lkotlin/jvm/functions/Function1;

.field private z:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavController$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavController$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavController;->G:Landroidx/navigation/NavController$a;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/navigation/NavController;->H:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    sget-object v0, Landroidx/navigation/NavController$activity$1;->INSTANCE:Landroidx/navigation/NavController$activity$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->h:Lkotlin/collections/ArrayDeque;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->i:Lkotlinx/coroutines/flow/y0;

    invoke-static {p1}, Lkotlinx/coroutines/flow/d;->b(Lkotlinx/coroutines/flow/y0;)Lkotlinx/coroutines/flow/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->j:Lkotlinx/coroutines/flow/i1;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->k:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/navigation/NavController;->s:Landroidx/lifecycle/Lifecycle$State;

    new-instance p1, Landroidx/navigation/e;

    invoke-direct {p1, p0}, Landroidx/navigation/e;-><init>(Landroidx/navigation/NavController;)V

    iput-object p1, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    new-instance p1, Landroidx/navigation/NavController$b;

    invoke-direct {p1, p0}, Landroidx/navigation/NavController$b;-><init>(Landroidx/navigation/NavController;)V

    iput-object p1, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/navigation/NavController;->v:Z

    new-instance v0, Landroidx/navigation/q;

    invoke-direct {v0}, Landroidx/navigation/q;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->A:Ljava/util/Map;

    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    new-instance v2, Landroidx/navigation/h;

    invoke-direct {v2, v0}, Landroidx/navigation/h;-><init>(Landroidx/navigation/q;)V

    invoke-virtual {v0, v2}, Landroidx/navigation/q;->b(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    new-instance v2, Landroidx/navigation/ActivityNavigator;

    iget-object v3, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/navigation/q;->b(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    new-instance v0, Landroidx/navigation/NavController$navInflater$2;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$navInflater$2;-><init>(Landroidx/navigation/NavController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->D:Lkotlin/Lazy;

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v2, v1}, Lkotlinx/coroutines/flow/d1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->E:Lkotlinx/coroutines/flow/x0;

    invoke-static {p1}, Lkotlinx/coroutines/flow/d;->a(Lkotlinx/coroutines/flow/x0;)Lkotlinx/coroutines/flow/c1;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->F:Lkotlinx/coroutines/flow/b;

    return-void
.end method

.method private final B()I
    .locals 3

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->t()V

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private final H(Lkotlin/collections/ArrayDeque;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->C()Landroidx/navigation/NavGraph;

    move-result-object v1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroidx/navigation/NavController;->t(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    iget-object v5, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/f;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_1

    :cond_3
    sget-object p1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore State failed: destination "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found from the current destination "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static final I(Landroidx/navigation/NavController;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    const-string v0, "event.targetState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavController;->s:Landroidx/lifecycle/Lifecycle$State;

    iget-object p1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p1, p2}, Landroidx/navigation/NavBackStackEntry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private final K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v3, p3

    iget-object v0, v6, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v1, v2}, Landroidx/navigation/r;->i(Z)V

    goto :goto_0

    :cond_0
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->e()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->f()Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->h()Z

    move-result v4

    invoke-direct {v6, v0, v1, v4}, Landroidx/navigation/NavController;->S(IZZ)Z

    move-result v0

    move v9, v0

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->i()Z

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->n()I

    move-result v1

    move-object/from16 v4, p4

    invoke-direct {v6, v1, v0, v3, v4}, Landroidx/navigation/NavController;->Y(ILandroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)Z

    move-result v0

    iput-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto/16 :goto_4

    :cond_3
    :goto_2
    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->z()Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    iget-object v5, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->g()Z

    move-result v10

    if-ne v10, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->n()I

    move-result v10

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v11

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->n()I

    move-result v11

    if-ne v10, v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v6, v3}, Landroidx/navigation/NavController;->g0(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    new-instance v3, Landroidx/navigation/NavBackStackEntry;

    invoke-direct {v3, v1, v0}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->w(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Landroidx/navigation/NavController;->J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_7
    invoke-virtual {v5, v3}, Landroidx/navigation/Navigator;->g(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_5

    :cond_8
    :goto_3
    sget-object v10, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    iget-object v11, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v14

    iget-object v15, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    const/16 v18, 0x60

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    move-object v13, v0

    invoke-static/range {v10 .. v19}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v10, Landroidx/navigation/NavController$navigate$4;

    move-object/from16 v1, p1

    invoke-direct {v10, v7, v6, v1, v0}, Landroidx/navigation/NavController$navigate$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->L(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;Lkotlin/jvm/functions/Function1;)V

    :goto_4
    move v2, v8

    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->i0()V

    iget-object v0, v6, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v1, v8}, Landroidx/navigation/r;->i(Z)V

    goto :goto_6

    :cond_9
    if-nez v9, :cond_b

    iget-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_b

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->h0()V

    goto :goto_8

    :cond_b
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->q()Z

    :goto_8
    return-void
.end method

.method private final L(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p5, p0, Landroidx/navigation/NavController;->y:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/navigation/Navigator;->e(Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/navigation/NavController;->y:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final M(Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    const-string v4, "name"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroidx/navigation/Navigator;->h(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    array-length v2, v0

    const/4 v3, 0x0

    :cond_4
    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    iget-object v8, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    invoke-virtual {v4, v6, v5, v7, v8}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/f;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v4

    iget-object v6, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    iget-object v6, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    new-instance v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v7, p0, v5}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v5

    invoke-virtual {v5, v4}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->k(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->n()I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/navigation/NavController;->w(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroidx/navigation/NavController;->J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_2

    :cond_6
    sget-object p1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring the Navigation back stack failed: destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found from the current destination "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-direct {p0}, Landroidx/navigation/NavController;->i0()V

    iput-object v1, p0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    :goto_3
    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-virtual {v0}, Landroidx/navigation/q;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/Navigator;

    invoke-virtual {v4}, Landroidx/navigation/Navigator;->c()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/Navigator;

    iget-object v3, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    new-instance v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v4, p0, v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2, v4}, Landroidx/navigation/Navigator;->f(Landroidx/navigation/r;)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroidx/navigation/NavController;->g:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->G(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, v1, v1}, Landroidx/navigation/NavController;->K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    goto :goto_6

    :cond_d
    invoke-direct {p0}, Landroidx/navigation/NavController;->q()Z

    :goto_6
    return-void
.end method

.method private final R(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p4, p0, Landroidx/navigation/NavController;->z:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, p3}, Landroidx/navigation/Navigator;->j(Landroidx/navigation/NavBackStackEntry;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/navigation/NavController;->z:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final S(IZZ)Z
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v4

    iget-object v5, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    if-nez p2, :cond_2

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->n()I

    move-result v9

    if-eq v9, v0, :cond_3

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->n()I

    move-result v5

    if-ne v5, v0, :cond_1

    move-object v9, v4

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    if-nez v9, :cond_5

    sget-object v1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    iget-object v3, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v1, v3, v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring popBackStack to destination "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as it was not found on the current back stack"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_5
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v11, Lkotlin/collections/ArrayDeque;

    invoke-direct {v11}, Lkotlin/collections/ArrayDeque;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/navigation/Navigator;

    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    new-instance v5, Landroidx/navigation/NavController$popBackStackInternal$2;

    move-object v0, v5

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object v8, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$popBackStackInternal$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;ZLkotlin/collections/ArrayDeque;)V

    invoke-direct {v6, v13, v15, v7, v8}, Landroidx/navigation/NavController;->R(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V

    iget-boolean v0, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_6

    :cond_7
    if-eqz v7, :cond_b

    if-nez p2, :cond_9

    sget-object v0, Landroidx/navigation/NavController$popBackStackInternal$3;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$3;

    invoke-static {v9, v0}, Lkotlin/sequences/SequencesKt;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Landroidx/navigation/NavController$popBackStackInternal$4;

    invoke-direct {v1, v6}, Landroidx/navigation/NavController$popBackStackInternal$4;-><init>(Landroidx/navigation/NavController;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->B(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    iget-object v2, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntryState;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v1

    invoke-virtual {v6, v1}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    sget-object v2, Landroidx/navigation/NavController$popBackStackInternal$6;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$6;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Landroidx/navigation/NavController$popBackStackInternal$7;

    invoke-direct {v2, v6}, Landroidx/navigation/NavController$popBackStackInternal$7;-><init>(Landroidx/navigation/NavController;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->B(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    iget-object v3, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    iget-object v1, v6, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->i0()V

    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0
.end method

.method static synthetic T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->S(IZZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final U(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->F()Landroidx/navigation/q;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p1

    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/r;->c()Lkotlinx/coroutines/flow/i1;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/flow/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_5

    invoke-virtual {v0, v2}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    new-instance p1, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {p1, v0}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {p3, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_5
    if-nez v1, :cond_6

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->g0(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v2}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_7
    :goto_2
    if-nez p2, :cond_9

    if-nez v1, :cond_9

    iget-object p1, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/navigation/f;->c(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to pop "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", which is not the top of the back stack ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lkotlin/collections/ArrayDeque;

    invoke-direct {p3}, Lkotlin/collections/ArrayDeque;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->U(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popEntryFromBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final Y(ILandroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)Z
    .locals 13

    move-object v6, p0

    const/4 v0, 0x0

    iget-object v1, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Landroidx/navigation/NavController$restoreStateInternal$1;

    invoke-direct {v3, v1}, Landroidx/navigation/NavController$restoreStateInternal$1;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->G(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    iget-object v2, v6, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p0, v1}, Landroidx/navigation/NavController;->H(Lkotlin/collections/ArrayDeque;)Ljava/util/List;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v5

    instance-of v5, v5, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Landroidx/navigation/NavBackStackEntry;

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    iget-object v0, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v11

    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v12, Landroidx/navigation/NavController$restoreStateInternal$4;

    move-object v0, v12

    move-object v1, v8

    move-object v2, v7

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$restoreStateInternal$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    move-object v0, p0

    move-object v1, v11

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->L(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_8
    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0
.end method

.method public static synthetic a(Landroidx/navigation/NavController;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/navigation/NavController;->I(Landroidx/navigation/NavController;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic c(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->y:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic d(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic e()Z
    .locals 1

    sget-boolean v0, Landroidx/navigation/NavController;->H:Z

    return v0
.end method

.method public static final synthetic f(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->A:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic g(Landroidx/navigation/NavController;)Landroidx/navigation/k;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/k;

    return-object p0
.end method

.method public static final synthetic h(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic i(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->z:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final i0()V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    iget-boolean v1, p0, Landroidx/navigation/NavController;->v:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->B()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/u;->setEnabled(Z)V

    return-void
.end method

.method public static final synthetic j(Landroidx/navigation/NavController;)Landroidx/navigation/f;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    return-object p0
.end method

.method public static final synthetic k(Landroidx/navigation/NavController;)Landroidx/navigation/q;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    return-object p0
.end method

.method public static final synthetic l(Landroidx/navigation/NavController;)Lkotlinx/coroutines/flow/y0;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->i:Lkotlinx/coroutines/flow/y0;

    return-object p0
.end method

.method public static final synthetic m(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->U(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void
.end method

.method private final n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p4

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v14

    instance-of v0, v14, Landroidx/navigation/b;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/b;

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lkotlin/collections/ArrayDeque;

    invoke-direct {v5}, Lkotlin/collections/ArrayDeque;-><init>()V

    instance-of v0, v7, Landroidx/navigation/NavGraph;

    const/16 v18, 0x0

    if-eqz v0, :cond_7

    move-object v0, v14

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v15, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_2
    move-object/from16 v1, v18

    :goto_2
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_3

    sget-object v8, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    iget-object v9, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v12

    iget-object v13, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    const/16 v16, 0x60

    const/16 v17, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v19, v14

    move-object v14, v0

    move-object v15, v1

    invoke-static/range {v8 .. v17}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object/from16 v19, v14

    :goto_3
    invoke-virtual {v5, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-ne v0, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v4

    move v4, v8

    move-object v8, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v4

    move-object v8, v5

    goto :goto_4

    :cond_5
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v13, v4

    move-object v8, v5

    move-object/from16 v19, v14

    move-object v12, v15

    :goto_4
    if-eqz v13, :cond_8

    if-ne v13, v7, :cond_6

    goto :goto_5

    :cond_6
    move-object v5, v8

    move-object v15, v12

    move-object v0, v13

    move-object/from16 v14, v19

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v8, v5

    move-object/from16 v19, v14

    move-object v12, v15

    :cond_8
    :goto_5
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v14, v19

    goto :goto_6

    :cond_9
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v14

    :cond_a
    :goto_6
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->n()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_c
    move-object/from16 v1, v18

    :goto_7
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_d

    sget-object v20, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    iget-object v0, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v14, v10}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v24

    iget-object v1, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    const/16 v28, 0x60

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    move-object/from16 v25, v1

    invoke-static/range {v20 .. v29}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    :cond_d
    invoke-virtual {v8, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v14, v19

    goto :goto_8

    :cond_f
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v14

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->n()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavGraph;->B(IZ)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_8

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-nez v0, :cond_11

    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    :cond_11
    if-nez v0, :cond_12

    move-object/from16 v0, v18

    goto :goto_9

    :cond_12
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    :goto_9
    iget-object v1, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    iget-object v3, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v18, v1

    :cond_14
    check-cast v18, Landroidx/navigation/NavBackStackEntry;

    if-nez v18, :cond_15

    sget-object v19, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    iget-object v0, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v1, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v23

    iget-object v2, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    const/16 v27, 0x60

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    invoke-static/range {v19 .. v28}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v18

    :cond_15
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_16
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v2

    iget-object v3, v6, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2, v1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->k(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_a

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigatorBackStack for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should already be created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v8}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v11}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/navigation/NavController;->w(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Landroidx/navigation/NavController;->J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_b

    :cond_1a
    return-void
.end method

.method static synthetic o(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p4

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addEntryToBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final p(I)Z
    .locals 5

    iget-object v0, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v1, v2}, Landroidx/navigation/r;->i(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroidx/navigation/NavController;->Y(ILandroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)Z

    move-result v0

    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v3, v4}, Landroidx/navigation/r;->i(Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v2, v4}, Landroidx/navigation/NavController;->S(IZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    return v2
.end method

.method private final q()Z
    .locals 7

    :goto_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Landroidx/navigation/NavController;->B:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/navigation/NavController;->B:I

    invoke-virtual {p0}, Landroidx/navigation/NavController;->h0()V

    iget v1, p0, Landroidx/navigation/NavController;->B:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/navigation/NavController;->B:I

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, p0, Landroidx/navigation/NavController;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v4, p0, Landroidx/navigation/NavController;->E:Lkotlinx/coroutines/flow/x0;

    invoke-interface {v4, v3}, Lkotlinx/coroutines/flow/x0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    const/4 v0, 0x0

    throw v0

    :cond_3
    iget-object v1, p0, Landroidx/navigation/NavController;->i:Lkotlinx/coroutines/flow/y0;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->W()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/x0;->b(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private final t(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;
    .locals 1

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->n()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method private final u([I)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_4

    add-int/lit8 v4, v2, 0x1

    aget v5, p1, v2

    if-nez v2, :cond_0

    iget-object v6, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->n()I

    move-result v6

    if-ne v6, v5, :cond_1

    iget-object v3, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    sget-object p1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    iget-object v0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v5}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_3

    instance-of v2, v3, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_3

    check-cast v3, Landroidx/navigation/NavGraph;

    move-object v0, v3

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    move-result-object v2

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    return-object v3
.end method


# virtual methods
.method public A()Landroidx/navigation/NavDestination;
    .locals 1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->z()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public C()Landroidx/navigation/NavGraph;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before calling getGraph()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final D()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->s:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    return-object v0
.end method

.method public E()Landroidx/navigation/k;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavController;->D:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/k;

    return-object v0
.end method

.method public F()Landroidx/navigation/q;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    return-object v0
.end method

.method public G(Landroid/content/Intent;)Z
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return v7

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v8, 0x0

    if-nez v1, :cond_1

    move-object v2, v8

    goto :goto_0

    :cond_1
    const-string v2, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    :goto_0
    if-nez v1, :cond_2

    move-object v3, v8

    goto :goto_1

    :cond_2
    const-string v3, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-nez v1, :cond_3

    move-object v1, v8

    goto :goto_2

    :cond_3
    const-string v5, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    const/4 v9, 0x1

    if-eqz v2, :cond_5

    array-length v1, v2

    if-nez v1, :cond_7

    :cond_5
    iget-object v1, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v5, Landroidx/navigation/g;

    invoke-direct {v5, v0}, Landroidx/navigation/g;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v5}, Landroidx/navigation/NavGraph;->r(Landroidx/navigation/g;)Landroidx/navigation/NavDestination$a;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/navigation/NavDestination$a;->b()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-static {v2, v8, v9, v8}, Landroidx/navigation/NavDestination;->j(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I

    move-result-object v3

    invoke-virtual {v1}, Landroidx/navigation/NavDestination$a;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_6
    move-object v10, v3

    move-object v3, v8

    goto :goto_3

    :cond_7
    move-object v10, v2

    :goto_3
    if-eqz v10, :cond_17

    array-length v1, v10

    if-nez v1, :cond_8

    goto/16 :goto_b

    :cond_8
    invoke-direct {v6, v10}, Landroidx/navigation/NavController;->u([I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return v7

    :cond_9
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    array-length v1, v10

    new-array v11, v1, [Landroid/os/Bundle;

    move v2, v7

    :goto_4
    if-ge v2, v1, :cond_b

    add-int/lit8 v5, v2, 0x1

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    if-eqz v13, :cond_a

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_a
    aput-object v12, v11, v2

    move v2, v5

    goto :goto_4

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_d

    const v3, 0x8000

    and-int/2addr v1, v3

    if-nez v1, :cond_d

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/b0;->f(Landroid/content/Context;)Landroidx/core/app/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/app/b0;->b(Landroid/content/Intent;)Landroidx/core/app/b0;

    move-result-object v0

    const-string v1, "create(context)\n        \u2026ntWithParentStack(intent)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/core/app/b0;->g()V

    iget-object v0, v6, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {v0, v7, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_5
    return v9

    :cond_d
    const-string v12, "Deep Linking failed: destination "

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    :cond_e
    :goto_6
    array-length v0, v10

    if-ge v7, v0, :cond_10

    aget v0, v10, v7

    add-int/lit8 v1, v7, 0x1

    aget-object v2, v11, v7

    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    if-eqz v3, :cond_f

    new-instance v0, Landroidx/navigation/NavController$handleDeepLink$2;

    invoke-direct {v0, v3, v6}, Landroidx/navigation/NavController$handleDeepLink$2;-><init>(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;)V

    invoke-static {v0}, Landroidx/navigation/n;->a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/l;

    move-result-object v0

    invoke-direct {v6, v3, v2, v0, v8}, Landroidx/navigation/NavController;->K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    move v7, v1

    goto :goto_6

    :cond_f
    sget-object v1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    iget-object v2, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found from the current destination "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    return v9

    :cond_11
    iget-object v0, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    array-length v1, v10

    move v2, v7

    :goto_7
    if-ge v2, v1, :cond_16

    add-int/lit8 v3, v2, 0x1

    aget v4, v10, v2

    aget-object v5, v11, v2

    if-nez v2, :cond_12

    iget-object v13, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    goto :goto_8

    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    move-result-object v13

    :goto_8
    if-eqz v13, :cond_15

    array-length v4, v10

    sub-int/2addr v4, v9

    if-eq v2, v4, :cond_14

    instance-of v2, v13, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_13

    check-cast v13, Landroidx/navigation/NavGraph;

    move-object v0, v13

    :goto_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    move-result-object v2

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_9

    :cond_13
    :goto_a
    move v2, v3

    goto :goto_7

    :cond_14
    new-instance v14, Landroidx/navigation/l$a;

    invoke-direct {v14}, Landroidx/navigation/l$a;-><init>()V

    iget-object v2, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    move-result v15

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/navigation/l$a;->i(Landroidx/navigation/l$a;IZZILjava/lang/Object;)Landroidx/navigation/l$a;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/navigation/l$a;->b(I)Landroidx/navigation/l$a;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/navigation/l$a;->c(I)Landroidx/navigation/l$a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/l$a;->a()Landroidx/navigation/l;

    move-result-object v2

    invoke-direct {v6, v13, v5, v2, v8}, Landroidx/navigation/NavController;->K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    goto :goto_a

    :cond_15
    sget-object v1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    iget-object v2, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be found in graph "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    iput-boolean v9, v6, Landroidx/navigation/NavController;->g:Z

    return v9

    :cond_17
    :goto_b
    return v7
.end method

.method public N()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->O(IZ)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public O(IZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->P(IZZ)Z

    move-result p1

    return p1
.end method

.method public P(IZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->S(IZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final Q(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/functions/Function0;)V
    .locals 9

    const-string v0, "popUpTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring pop of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/navigation/NavController;->S(IZZ)Z

    :cond_1
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/navigation/NavController;->i0()V

    invoke-direct {p0}, Landroidx/navigation/NavController;->q()Z

    return-void
.end method

.method public final W()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2}, Landroidx/navigation/r;->c()Lkotlinx/coroutines/flow/i1;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/i1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v3

    instance-of v3, v3, Landroidx/navigation/NavGraph;

    if-nez v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v1
.end method

.method public X(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    const-string v0, "android-support-nav:controller:backStack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    iget-object v0, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android-support-nav:controller:backStackIds"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_0

    :cond_1
    const-string v0, "android-support-nav:controller:backStackStates"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "android-support-nav:controller:backStackStates:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    const-string v4, "id"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/collections/ArrayDeque;

    array-length v5, v2

    invoke-direct {v4, v5}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    if-eqz v5, :cond_4

    check-cast v5, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_3
    const-string v0, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/navigation/NavController;->g:Z

    return-void
.end method

.method public Z()Landroid/os/Bundle;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-virtual {v2}, Landroidx/navigation/q;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/Navigator;

    invoke-virtual {v3}, Landroidx/navigation/Navigator;->i()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    add-int/lit8 v6, v4, 0x1

    new-instance v7, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v7, v5}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    aput-object v7, v0, v4

    move v4, v6

    goto :goto_2

    :cond_4
    const-string v3, "android-support-nav:controller:backStack"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_5
    iget-object v0, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez v2, :cond_6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_6
    iget-object v0, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    aput v7, v0, v5

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_3

    :cond_7
    const-string v4, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android-support-nav:controller:backStackIds"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    iget-object v0, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/collections/ArrayDeque;

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Parcelable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v1

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_a
    check-cast v8, Landroidx/navigation/NavBackStackEntryState;

    aput-object v8, v6, v7

    move v7, v9

    goto :goto_5

    :cond_b
    const-string v4, "android-support-nav:controller:backStackStates:"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_4

    :cond_c
    const-string v1, "android-support-nav:controller:backStackStates"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_d
    iget-boolean v0, p0, Landroidx/navigation/NavController;->g:Z

    if-eqz v0, :cond_f

    if-nez v2, :cond_e

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_e
    const-string v0, "android-support-nav:controller:deepLinkHandled"

    iget-boolean v1, p0, Landroidx/navigation/NavController;->g:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    return-object v2
.end method

.method public a0(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->E()Landroidx/navigation/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/k;->b(I)Landroidx/navigation/NavGraph;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->c0(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public b0(ILandroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->E()Landroidx/navigation/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/k;->b(I)Landroidx/navigation/NavGraph;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->c0(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public c0(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/navigation/NavController;->p(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroidx/navigation/NavController;->T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    :goto_1
    iput-object p1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-direct {p0, p2}, Landroidx/navigation/NavController;->M(Landroid/os/Bundle;)V

    goto :goto_5

    :cond_2
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/collection/y0;->p()I

    move-result p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_7

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    iget-object v3, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroidx/collection/y0;->o(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->n()I

    move-result v5

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    const-string v4, "newDestination"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/navigation/NavBackStackEntry;->k(Landroidx/navigation/NavDestination;)V

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    :goto_5
    return-void
.end method

.method public d0(Landroidx/lifecycle/u;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :goto_0
    iput-object p1, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void
.end method

.method public e0(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController;->p:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    invoke-virtual {v1}, Landroidx/activity/u;->remove()V

    iput-object p1, p0, Landroidx/navigation/NavController;->p:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    iget-object v0, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f0(Landroidx/lifecycle/x0;)V
    .locals 3

    const-string v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    sget-object v1, Landroidx/navigation/f;->b:Landroidx/navigation/f$b;

    invoke-virtual {v1, p1}, Landroidx/navigation/f$b;->a(Landroidx/lifecycle/x0;)Landroidx/navigation/f;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Landroidx/navigation/f$b;->a(Landroidx/lifecycle/x0;)Landroidx/navigation/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewModelStore should be set before setGraph call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g0(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->e(Landroidx/navigation/NavBackStackEntry;)V

    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-object p1
.end method

.method public final h0()V
    .locals 11

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v2, v1, Landroidx/navigation/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v4

    instance-of v5, v4, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroidx/navigation/b;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->h()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v8

    if-eqz v1, :cond_a

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->n()I

    move-result v9

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->n()I

    move-result v10

    if-ne v9, v10, :cond_a

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v7, v8, :cond_9

    invoke-virtual {p0}, Landroidx/navigation/NavController;->F()Landroidx/navigation/q;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v7

    iget-object v9, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-nez v7, :cond_3

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Landroidx/navigation/r;->c()Lkotlinx/coroutines/flow/i1;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Lkotlinx/coroutines/flow/i1;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_3
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    :goto_5
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_6
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v1

    goto :goto_1

    :cond_a
    if-eqz v4, :cond_d

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->n()I

    move-result v8

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->n()I

    move-result v9

    if-ne v8, v9, :cond_d

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v7, v8, :cond_b

    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v7}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_7

    :cond_b
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v7, v8, :cond_c

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_7
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v4

    goto/16 :goto_1

    :cond_d
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v7}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    goto/16 :goto_1

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/Lifecycle$State;

    if-eqz v3, :cond_f

    invoke-virtual {v1, v3}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->m()V

    goto :goto_8

    :cond_10
    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/NavController;->v:Z

    invoke-direct {p0}, Landroidx/navigation/NavController;->i0()V

    return-void
.end method

.method public final s(I)Landroidx/navigation/NavDestination;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0, v1, p1}, Landroidx/navigation/NavController;->t(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method public v()Lkotlin/collections/ArrayDeque;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Lkotlin/collections/ArrayDeque;

    return-object v0
.end method

.method public w(I)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No destination with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No destination with route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    return-object v0
.end method

.method public z()Landroidx/navigation/NavBackStackEntry;
    .locals 1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    return-object v0
.end method
