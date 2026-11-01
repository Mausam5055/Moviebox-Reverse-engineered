.class Lcom/facebook/biddingkit/logging/EventLogDispatcher;
.super Ljava/lang/Object;


# static fields
.field private static volatile g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;


# instance fields
.field private a:I

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Lcom/facebook/biddingkit/logging/i;


# direct methods
.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;

    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;-><init>(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;

    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;-><init>(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V

    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    return p0
.end method

.method static synthetic d(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method private g()V
    .locals 5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Lcom/facebook/biddingkit/logging/f;->e(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/biddingkit/logging/e;

    invoke-virtual {v4}, Lcom/facebook/biddingkit/logging/e;->m()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    const-string v3, "tokens"

    invoke-static {}, Lcom/facebook/biddingkit/logging/a;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "events"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7d0

    invoke-static {v0, v3, v1}, Lm8/b;->b(Ljava/lang/String;ILjava/lang/String;)Ll8/e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ll8/e;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/i;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/i;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/biddingkit/logging/e;

    invoke-virtual {v1}, Lcom/facebook/biddingkit/logging/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/biddingkit/logging/f;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    :goto_5
    const-string v1, "EventLogDispatcher"

    const-string v2, "Failed dispatching events"

    invoke-static {v1, v2, v0}, Lcom/facebook/biddingkit/logging/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public static h()Lcom/facebook/biddingkit/logging/EventLogDispatcher;
    .locals 2

    sget-object v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    if-nez v0, :cond_1

    const-class v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    invoke-direct {v1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;-><init>()V

    sput-object v1, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

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
    sget-object v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    return-object v0
.end method

.method public static j(Lcom/facebook/biddingkit/logging/i;)V
    .locals 1

    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->h()Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->i(Lcom/facebook/biddingkit/logging/i;)V

    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->h()Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->k()V

    return-void
.end method


# virtual methods
.method public i(Lcom/facebook/biddingkit/logging/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    invoke-virtual {p1}, Lcom/facebook/biddingkit/logging/i;->a()I

    move-result p1

    iput p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    return-void
.end method

.method protected k()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d:Ljava/lang/Runnable;

    iget v2, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
