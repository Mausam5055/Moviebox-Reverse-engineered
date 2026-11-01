.class public Lcom/mbridge/msdk/tracker/network/toolbox/m;
.super Lcom/mbridge/msdk/tracker/network/toolbox/a;


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okhttp/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/network/toolbox/a;-><init>()V

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a()Lcom/mbridge/msdk/thrid/okhttp/t;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    return-void
.end method

.method private a(Lcom/mbridge/msdk/thrid/okhttp/z;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/z;->h()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/z;->h()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method private a()Lcom/mbridge/msdk/thrid/okhttp/t;
    .locals 10

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Dispatcher"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/l;

    invoke-direct {v0, v8}, Lcom/mbridge/msdk/thrid/okhttp/l;-><init>(Ljava/util/concurrent/ExecutorService;)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/l;->b(I)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/l;->a(I)V

    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/t$b;

    invoke-direct {v1}, Lcom/mbridge/msdk/thrid/okhttp/t$b;-><init>()V

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3, v9}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    invoke-virtual {v1, v2, v3, v9}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->b(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    invoke-virtual {v1, v2, v3, v9}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Z)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/h;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0x20

    const-wide/16 v5, 0x5

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/mbridge/msdk/thrid/okhttp/h;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Lcom/mbridge/msdk/thrid/okhttp/h;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Lcom/mbridge/msdk/thrid/okhttp/l;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a()Lcom/mbridge/msdk/thrid/okhttp/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/thrid/okhttp/x;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->b()[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/x;->a(Lcom/mbridge/msdk/thrid/okhttp/s;[B)Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/mbridge/msdk/thrid/okhttp/w$a;Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/thrid/okhttp/w$a;",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->g()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t create request body for patch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string p1, "TRACE"

    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    :pswitch_2
    const-string p1, "OPTIONS"

    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->d()Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b()Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->d(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t create request body for put"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t create request body for post"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c()Lcom/mbridge/msdk/thrid/okhttp/w$a;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/mbridge/msdk/tracker/network/p;Lcom/mbridge/msdk/thrid/okhttp/t$b;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;-><init>(Lcom/mbridge/msdk/tracker/network/p;)V

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;",
            "Lcom/mbridge/msdk/tracker/network/p;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->m()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/tracker/network/p;->g(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/network/t;Ljava/util/Map;)Lcom/mbridge/msdk/tracker/network/toolbox/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/tracker/network/toolbox/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->h()Lcom/mbridge/msdk/tracker/network/p;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->q()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x7530

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->q()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->r()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->g()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/mbridge/msdk/tracker/network/toolbox/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/t;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->t()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v3}, Lcom/mbridge/msdk/tracker/network/p;->f(Ljava/lang/String;)V

    int-to-long v4, v0

    invoke-virtual {p2, v4, v5}, Lcom/mbridge/msdk/tracker/network/p;->e(J)V

    invoke-virtual {p2, v4, v5}, Lcom/mbridge/msdk/tracker/network/p;->f(J)V

    invoke-virtual {p2, v4, v5}, Lcom/mbridge/msdk/tracker/network/p;->j(J)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->n()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/mbridge/msdk/tracker/network/p;->a(J)V

    :cond_2
    invoke-static {p1, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/p;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/mbridge/msdk/thrid/okhttp/u;->e:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v5}, Lcom/mbridge/msdk/thrid/okhttp/t;->s()Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Ljava/util/List;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v4

    new-instance v5, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;

    invoke-direct {v5, v3}, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Ljavax/net/ssl/HostnameVerifier;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v4

    int-to-long v5, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->b(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v4

    if-nez p2, :cond_3

    sget-object v7, Lcom/mbridge/msdk/thrid/okhttp/m;->a:Lcom/mbridge/msdk/thrid/okhttp/m;

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/mbridge/msdk/tracker/network/toolbox/j;

    invoke-virtual {p2}, Lcom/mbridge/msdk/tracker/network/p;->H()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/mbridge/msdk/tracker/network/p;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/p;)V

    :goto_2
    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Lcom/mbridge/msdk/thrid/okhttp/m;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a(Lcom/mbridge/msdk/tracker/network/p;Lcom/mbridge/msdk/thrid/okhttp/t$b;)V

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/w$a;

    invoke-direct {p2}, Lcom/mbridge/msdk/thrid/okhttp/w$a;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->f()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v4, v2}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_3

    :cond_4
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p2, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a(Lcom/mbridge/msdk/thrid/okhttp/w$a;Lcom/mbridge/msdk/tracker/network/t;)V

    invoke-virtual {p2, v3}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a()Lcom/mbridge/msdk/thrid/okhttp/t;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/t;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okhttp/d;->d()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->m()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/thrid/okhttp/p;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {p2, v2}, Lcom/mbridge/msdk/thrid/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_5

    new-instance v5, Lcom/mbridge/msdk/tracker/network/g;

    invoke-direct {v5, v3, v4}, Lcom/mbridge/msdk/tracker/network/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p2, Lcom/mbridge/msdk/tracker/network/toolbox/g;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    move-result p1

    invoke-direct {p2, p1, v0}, Lcom/mbridge/msdk/tracker/network/toolbox/g;-><init>(ILjava/util/List;)V

    return-object p2

    :cond_7
    new-instance v1, Lcom/mbridge/msdk/tracker/network/toolbox/g;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    move-result p1

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/m;->a(Lcom/mbridge/msdk/thrid/okhttp/z;)I

    move-result v2

    invoke-virtual {p2}, Lcom/mbridge/msdk/thrid/okhttp/z;->d()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/g;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object v1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "okhttp client is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
