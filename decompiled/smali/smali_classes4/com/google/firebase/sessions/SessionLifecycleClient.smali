.class public final Lcom/google/firebase/sessions/SessionLifecycleClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionLifecycleClient$ClientUpdateHandler;,
        Lcom/google/firebase/sessions/SessionLifecycleClient$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/google/firebase/sessions/SessionLifecycleClient$a;


# instance fields
.field private final a:Lkotlin/coroutines/CoroutineContext;

.field private b:Landroid/os/Messenger;

.field private c:Z

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;

.field private final e:Lcom/google/firebase/sessions/SessionLifecycleClient$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleClient$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleClient$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionLifecycleClient;->f:Lcom/google/firebase/sessions/SessionLifecycleClient$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance p1, Lcom/google/firebase/sessions/SessionLifecycleClient$b;

    invoke-direct {p1, p0}, Lcom/google/firebase/sessions/SessionLifecycleClient$b;-><init>(Lcom/google/firebase/sessions/SessionLifecycleClient;)V

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->e:Lcom/google/firebase/sessions/SessionLifecycleClient$b;

    return-void
.end method

.method public static final synthetic a(Lcom/google/firebase/sessions/SessionLifecycleClient;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->j()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/google/firebase/sessions/SessionLifecycleClient;Ljava/util/List;I)Landroid/os/Message;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/sessions/SessionLifecycleClient;->l(Ljava/util/List;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/google/firebase/sessions/SessionLifecycleClient;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object p0
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/SessionLifecycleClient;Ljava/util/List;)Lkotlinx/coroutines/t1;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleClient;->o(Ljava/util/List;)Lkotlinx/coroutines/t1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/SessionLifecycleClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleClient;->p(Landroid/os/Message;)V

    return-void
.end method

.method public static final synthetic f(Lcom/google/firebase/sessions/SessionLifecycleClient;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->b:Landroid/os/Messenger;

    return-void
.end method

.method public static final synthetic g(Lcom/google/firebase/sessions/SessionLifecycleClient;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->c:Z

    return-void
.end method

.method private final j()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    return-object v0
.end method

.method private final l(Ljava/util/List;I)Landroid/os/Message;
    .locals 6

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_3
    move-object v0, p2

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_5

    move-object p2, v2

    move-wide v0, v3

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :goto_2
    check-cast p1, Landroid/os/Message;

    return-object p1
.end method

.method private final m(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queued message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Queue size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to enqueue message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Dropping."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private final n(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    const-string v1, "obtain(null, messageCode, 0, 0)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->o(Ljava/util/List;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final o(Ljava/util/List;)Lkotlinx/coroutines/t1;
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/google/firebase/sessions/SessionLifecycleClient$sendLifecycleEvents$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient$sendLifecycleEvents$1;-><init>(Lcom/google/firebase/sessions/SessionLifecycleClient;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    return-object p1
.end method

.method private final p(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending lifecycle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to deliver message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionLifecycleClient"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleClient;->m(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleClient;->m(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->n(I)V

    return-void
.end method

.method public final i(Lcom/google/firebase/sessions/y;)V
    .locals 3

    const-string v0, "sessionLifecycleServiceBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/firebase/sessions/SessionLifecycleClient$ClientUpdateHandler;

    iget-object v2, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-direct {v1, v2}, Lcom/google/firebase/sessions/SessionLifecycleClient$ClientUpdateHandler;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient;->e:Lcom/google/firebase/sessions/SessionLifecycleClient$b;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/sessions/y;->a(Landroid/os/Messenger;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->n(I)V

    return-void
.end method
