.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher;
.super Lkotlinx/coroutines/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidUiDispatcher$b;
    }
.end annotation


# static fields
.field public static final k:Landroidx/compose/ui/platform/AndroidUiDispatcher$b;

.field public static final l:I

.field private static final m:Lkotlin/Lazy;

.field private static final n:Ljava/lang/ThreadLocal;


# instance fields
.field private final a:Landroid/view/Choreographer;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Object;

.field private final d:Lkotlin/collections/ArrayDeque;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Z

.field private h:Z

.field private final i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

.field private final j:Landroidx/compose/runtime/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidUiDispatcher$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->k:Landroidx/compose/ui/platform/AndroidUiDispatcher$b;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->l:I

    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$Main$2;->INSTANCE:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$Main$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->m:Lkotlin/Lazy;

    new-instance v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$a;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->n:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->b:Landroid/os/Handler;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    new-instance p2, Lkotlin/collections/ArrayDeque;

    invoke-direct {p2}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->f:Ljava/util/List;

    new-instance p2, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;-><init>(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    new-instance p2, Landroidx/compose/ui/platform/AndroidUiFrameClock;

    invoke-direct {p2, p1, p0}, Landroidx/compose/ui/platform/AndroidUiFrameClock;-><init>(Landroid/view/Choreographer;Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->j:Landroidx/compose/runtime/u0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;)V

    return-void
.end method

.method private final U()Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final V(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->f:Ljava/util/List;

    iput-object v3, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v3, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final Z()V
    .locals 2

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->U()Ljava/lang/Runnable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->U()Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public static final synthetic d()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->n:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final synthetic p(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic q(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic s()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->m:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic t(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic u(Landroidx/compose/ui/platform/AndroidUiDispatcher;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->V(J)V

    return-void
.end method

.method public static final synthetic v(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Z()V

    return-void
.end method

.method public static final synthetic w(Landroidx/compose/ui/platform/AndroidUiDispatcher;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    return-void
.end method


# virtual methods
.method public final T()Landroidx/compose/runtime/u0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->j:Landroidx/compose/runtime/u0;

    return-object v0
.end method

.method public final a0(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-virtual {p1, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final c0(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->g:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->g:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->b:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    if-nez v0, :cond_0

    iput-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-virtual {p2, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p2
.end method

.method public final x()Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    return-object v0
.end method
