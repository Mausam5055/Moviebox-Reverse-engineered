.class public final Lko/l0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lko/l0;

.field private static final b:Lkotlin/Lazy;

.field private static c:Lkotlin/jvm/functions/Function0;

.field private static d:Lkotlin/jvm/functions/Function0;

.field private static e:Lkotlin/jvm/functions/Function0;

.field private static f:Lkotlin/jvm/functions/Function0;

.field private static final g:Lkotlin/Lazy;

.field private static final h:Lkotlin/Lazy;

.field private static final i:Lkotlin/Lazy;

.field private static final j:Lkotlin/Lazy;

.field private static k:Lkotlin/jvm/functions/Function0;

.field private static volatile l:Lko/o0;

.field private static volatile m:Lcom/transsion/player/orplayer/g;

.field private static final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final o:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lko/l0;

    invoke-direct {v0}, Lko/l0;-><init>()V

    sput-object v0, Lko/l0;->a:Lko/l0;

    new-instance v0, Lko/g0;

    invoke-direct {v0}, Lko/g0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lko/l0;->b:Lkotlin/Lazy;

    new-instance v0, Lko/h0;

    invoke-direct {v0}, Lko/h0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lko/l0;->g:Lkotlin/Lazy;

    new-instance v0, Lko/i0;

    invoke-direct {v0}, Lko/i0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lko/l0;->h:Lkotlin/Lazy;

    new-instance v0, Lko/j0;

    invoke-direct {v0}, Lko/j0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lko/l0;->i:Lkotlin/Lazy;

    new-instance v0, Lko/k0;

    invoke-direct {v0}, Lko/k0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lko/l0;->j:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lko/l0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lko/l0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final H()Lko/f0;
    .locals 1

    new-instance v0, Lko/f0;

    invoke-direct {v0}, Lko/f0;-><init>()V

    return-object v0
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lko/l0;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Lko/f0;
    .locals 1

    invoke-static {}, Lko/l0;->H()Lko/f0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Z
    .locals 1

    invoke-static {}, Lko/l0;->q()Z

    move-result v0

    return v0
.end method

.method public static synthetic d()I
    .locals 1

    invoke-static {}, Lko/l0;->k()I

    move-result v0

    return v0
.end method

.method public static synthetic e()Z
    .locals 1

    invoke-static {}, Lko/l0;->n()Z

    move-result v0

    return v0
.end method

.method private static final g()Z
    .locals 3

    sget-object v0, Lko/l0;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiplePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return v0
.end method

.method private static final k()I
    .locals 3

    sget-object v0, Lko/l0;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1388

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiplePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v0
.end method

.method private final l()Lko/f0;
    .locals 1

    sget-object v0, Lko/l0;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lko/f0;

    return-object v0
.end method

.method private static final n()Z
    .locals 3

    sget-object v0, Lko/l0;->f:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isASyncPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return v0
.end method

.method private static final q()Z
    .locals 3

    sget-object v0, Lko/l0;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiplePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return v0
.end method

.method private final t(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/orplayer/g;)V
    .locals 0

    sget-object p1, Lko/l0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final w(Lcom/transsion/player/orplayer/g;)V
    .locals 3

    sget-object v0, Lko/l0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    sget-object p1, Lko/l0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final A(Lko/o0;)V
    .locals 5

    const-string v0, "tnPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lko/l0;->o()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lko/l0;->l:Lko/o0;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lko/l0;->l:Lko/o0;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Loo/e;->a:Loo/e;

    const-string v1, "TnPlayer"

    sget-object v2, Lko/l0;->l:Lko/o0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6362boss\u5566:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lko/l0;->l:Lko/o0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lko/o0;->d(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lko/o0;->d(Z)V

    sget-object v0, Lko/l0;->l:Lko/o0;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lko/o0;->f(Lcom/transsion/player/orplayer/g;)V

    :cond_1
    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-direct {v0}, Lko/l0;->l()Lko/f0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lko/o0;->f(Lcom/transsion/player/orplayer/g;)V

    sput-object p1, Lko/l0;->l:Lko/o0;

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public final B(Lcom/transsion/player/orplayer/g;Lao/e;)V
    .locals 0

    const-string p2, "orPlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final C(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p1, Lko/l0;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final D(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p1, Lko/l0;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final E(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p1, Lko/l0;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final F(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p1, Lko/l0;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final G(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p1, Lko/l0;->k:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final f(Ljava/lang/String;)Lcom/transsion/player/orplayer/g;
    .locals 4

    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lko/l0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->currentMediaSource()Lao/e;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lao/e;->e()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    return-object v2
.end method

.method public final h()Lcom/transsion/player/orplayer/g;
    .locals 1

    sget-object v0, Lko/l0;->m:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    sget-object v0, Lko/l0;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    sget-object v0, Lko/l0;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    sget-object v0, Lko/l0;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    sget-object v0, Lko/l0;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()Lkotlin/jvm/functions/Function0;
    .locals 1

    sget-object v0, Lko/l0;->c:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final r()I
    .locals 1

    sget-object v0, Lko/l0;->k:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final s()Lcom/transsion/player/orplayer/g;
    .locals 3

    invoke-virtual {p0}, Lko/l0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lko/f0;

    invoke-direct {v0}, Lko/f0;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lko/o0;

    invoke-direct {v0}, Lko/o0;-><init>()V

    :goto_0
    sget-object v1, Lko/l0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final u(Lcom/transsion/player/orplayer/g;Lao/e;)V
    .locals 0

    const-string p2, "orPlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Lcom/transsion/player/orplayer/g;Lao/e;)V
    .locals 0

    const-string p2, "orPlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final x(Lcom/transsion/player/orplayer/g;)V
    .locals 7

    const-string v0, "orPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lko/l0;->m:Lcom/transsion/player/orplayer/g;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lko/l0;->m:Lcom/transsion/player/orplayer/g;

    invoke-direct {p0, v0, p1}, Lko/l0;->t(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/orplayer/g;)V

    sget-object v1, Loo/e;->a:Loo/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseFocus  orPlayer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "TnPlayerManager"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lko/l0;->w(Lcom/transsion/player/orplayer/g;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final z(Lcom/transsion/player/orplayer/g;Ljava/lang/String;)V
    .locals 9

    const-string v0, "orPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lko/l0;->m:Lcom/transsion/player/orplayer/g;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lko/l0;->m:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_1
    sput-object p1, Lko/l0;->m:Lcom/transsion/player/orplayer/g;

    invoke-direct {p0, v0, p1}, Lko/l0;->t(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/orplayer/g;)V

    sget-object v3, Loo/e;->a:Loo/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestFocus  orPlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  reason:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "TnPlayerManager"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
