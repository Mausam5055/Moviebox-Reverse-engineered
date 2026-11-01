.class public final Lcom/mbridge/msdk/dycreator/bus/EventBus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;,
        Lcom/mbridge/msdk/dycreator/bus/EventBus$PostCallback;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field static n:Ljava/util/concurrent/ExecutorService;

.field private static volatile o:Lcom/mbridge/msdk/dycreator/bus/EventBus;

.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/dycreator/bus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private final g:Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

.field private final h:Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

.field private final i:Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

.field private final j:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

.field private k:Z

.field private l:Z

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->n:Ljava/util/concurrent/ExecutorService;

    const-string v0, "Event"

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus$1;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus$2;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/lang/ThreadLocal;

    const-string v0, "onEvent"

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->g:Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->h:Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    invoke-direct {v0}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->j:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->l:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;Z)V
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$3;->a:[I

    iget-object v1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->b:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object v1, v1, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->b:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    iget-object p3, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;->enqueue(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown thread mode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->b:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->b:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->h:Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->enqueue(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->g:Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->k:Z

    iget-object v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-direct {v3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/Subscription;-><init>(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;)V

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/dycreator/bus/Subscription;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/mbridge/msdk/dycreator/bus/EventBusException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Subscriber "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mbridge/msdk/dycreator/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    iget-object p2, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p1, p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v3, p2, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;Z)V

    goto :goto_3

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_5
    :goto_3
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    iget-object v2, v2, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->j:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    invoke-direct {p0, p1, v0, p3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs declared-synchronized a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->j:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    invoke-virtual {v1, v0, p2}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object v1, v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->c:Ljava/lang/Class;

    if-ne p4, v1, :cond_1

    invoke-direct {p0, p1, v0, p3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz p5, :cond_0

    array-length v1, p5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, p5, v2

    iget-object v4, v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->c:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p1, v0, p3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/Object;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-direct {p0, v5, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_2
    if-nez v4, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No subscripers registered for event "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/mbridge/msdk/dycreator/bus/NoSubscriberEvent;

    if-eq v0, p2, :cond_3

    const-class p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    if-eq v0, p2, :cond_3

    new-instance p2, Lcom/mbridge/msdk/dycreator/bus/NoSubscriberEvent;

    invoke-direct {p2, p0, p1}, Lcom/mbridge/msdk/dycreator/bus/NoSubscriberEvent;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static clearCaches()V
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a()V

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static clearSkipMethodNameVerifications()V
    .locals 0

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->clearSkipMethodNameVerifications()V

    return-void
.end method

.method public static getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    return-object v0
.end method

.method public static skipMethodNameVerificationFor(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V
    .locals 2

    iget-object v0, p1, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->b:Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    return-void
.end method

.method a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->b:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object v0, v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    sget-object p1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " caused exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->l:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance v1, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->post(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public configureLogSubscriberExceptions(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->k:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->l:Z

    return-void

    :cond_0
    new-instance p1, Lcom/mbridge/msdk/dycreator/bus/EventBusException;

    const-string v0, "This method must be called before any registration"

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;

    iget-boolean v1, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v3, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iput-boolean v4, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    goto :goto_3

    :goto_2
    iput-boolean v4, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    throw v0

    :cond_2
    :goto_3
    return-void
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public varargs register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public register(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public varargs declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public registerSticky(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public varargs registerSticky(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public registerSticky(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public varargs declared-synchronized registerSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->n:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_4
    return-void
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeStickyEvent(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    array-length v0, p2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-direct {p0, p1, v3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscriber to unregister was not registered before: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Provide at least one event class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
