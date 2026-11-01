.class public final Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

.field private static b:Ljava/lang/ref/WeakReference;

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static d:Lkotlinx/coroutines/t1;

.field private static e:I

.field private static f:I

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    invoke-direct {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x3

    sput v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f()V

    return-void
.end method

.method private final f()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->j()V

    return-void
.end method

.method private final g()Z
    .locals 5

    sget v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    const/4 v1, 0x0

    if-ltz v0, :cond_6

    sget v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sget-boolean v3, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    if-nez v3, :cond_4

    sget v3, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    if-nez v3, :cond_2

    sput-boolean v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    sget v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    if-ne v3, v0, :cond_3

    sput-boolean v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    return v2

    :cond_3
    return v1

    :cond_4
    sget v3, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    if-nez v3, :cond_5

    return v2

    :cond_5
    sget v4, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    sub-int/2addr v0, v4

    add-int/2addr v3, v2

    rem-int/2addr v0, v3

    if-nez v0, :cond_6

    move v1, v2

    :cond_6
    :goto_0
    return v1
.end method

.method private final h()V
    .locals 7

    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleCoroutineScope;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method

.method private final i()V
    .locals 3

    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    sput-object v1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final j()V
    .locals 7

    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c()Lcom/transsion/shorttv/ad/AdLoadState;

    move-result-object v2

    sget-object v3, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x2710

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    sget-object v0, Lur/a;->a:Lur/a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "overlay"

    const-string v2, "overlay ad manager clear"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lur/a;->g(Lur/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f()V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->f(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    sput-object v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->i()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/transsion/shorttv/ad/playeroverlayad/a;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScope;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lur/a;->a:Lur/a;

    sget-object v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdData, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentVideoCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "overlay"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lur/a;->g(Lur/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    if-nez v1, :cond_2

    new-instance v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    invoke-direct {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->h(Z)V

    sget-object v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    invoke-direct {v2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/transsion/shorttv/ad/playeroverlayad/e;

    const-string v3, "ShortTvPlayerOverlayScene"

    invoke-direct {v2, v3, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->f(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->h(Z)V

    :cond_1
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->h()V

    sget-object p1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const/4 v0, 0x0

    const-string v1, "ShortTvPlayerOverlayScene"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/ad/scene/a;->o(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/transsion/ad/scene/a;->q(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->j()V

    :cond_0
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->i(Z)V

    :cond_1
    return-void
.end method
