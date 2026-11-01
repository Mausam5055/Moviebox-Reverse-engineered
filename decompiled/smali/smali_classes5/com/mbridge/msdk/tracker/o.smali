.class Lcom/mbridge/msdk/tracker/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/tracker/o$c;,
        Lcom/mbridge/msdk/tracker/o$b;
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/tracker/r;

.field private final b:I

.field private final c:Lcom/mbridge/msdk/tracker/p;

.field private final d:Lcom/mbridge/msdk/tracker/w;

.field private final e:I

.field private f:Lcom/mbridge/msdk/tracker/network/u;

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(ILcom/mbridge/msdk/tracker/p;Lcom/mbridge/msdk/tracker/w;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/tracker/o;->b:I

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/o;->c:Lcom/mbridge/msdk/tracker/p;

    iput-object p3, p0, Lcom/mbridge/msdk/tracker/o;->d:Lcom/mbridge/msdk/tracker/w;

    iput p4, p0, Lcom/mbridge/msdk/tracker/o;->e:I

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/mbridge/msdk/tracker/o$a;

    invoke-direct {v7, p0}, Lcom/mbridge/msdk/tracker/o$a;-><init>(Lcom/mbridge/msdk/tracker/o;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const-wide/16 v3, 0x14

    move-object v0, p2

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/o;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private a(Lcom/mbridge/msdk/tracker/t;Ljava/util/Map;Z)Lcom/mbridge/msdk/tracker/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/t;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/mbridge/msdk/tracker/v<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/mbridge/msdk/tracker/o;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/mbridge/msdk/tracker/v;

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/o;->c:Lcom/mbridge/msdk/tracker/p;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/p;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/tracker/o;->c:Lcom/mbridge/msdk/tracker/p;

    invoke-virtual {v3}, Lcom/mbridge/msdk/tracker/p;->a()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/mbridge/msdk/tracker/v;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/tracker/v;

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/o;->c:Lcom/mbridge/msdk/tracker/p;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/mbridge/msdk/tracker/v;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/tracker/v;->a(Ljava/util/Map;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/tracker/network/t;->a(Z)Lcom/mbridge/msdk/tracker/network/t;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->c(Z)Lcom/mbridge/msdk/tracker/network/t;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->b(Z)Lcom/mbridge/msdk/tracker/network/t;

    iget-object p2, p0, Lcom/mbridge/msdk/tracker/o;->d:Lcom/mbridge/msdk/tracker/w;

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/tracker/v;->a(Lcom/mbridge/msdk/tracker/w;)V

    if-eqz p3, :cond_1

    sget-object p2, Lcom/mbridge/msdk/tracker/network/t$a;->c:Lcom/mbridge/msdk/tracker/network/t$a;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/mbridge/msdk/tracker/network/t$a;->b:Lcom/mbridge/msdk/tracker/network/t$a;

    :goto_1
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/tracker/v;->a(Lcom/mbridge/msdk/tracker/network/t$a;)V

    new-instance p2, Lcom/mbridge/msdk/tracker/o$c;

    iget-object p3, p0, Lcom/mbridge/msdk/tracker/o;->a:Lcom/mbridge/msdk/tracker/r;

    invoke-direct {p2, p3, p1}, Lcom/mbridge/msdk/tracker/o$c;-><init>(Lcom/mbridge/msdk/tracker/r;Lcom/mbridge/msdk/tracker/t;)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/tracker/v;->a(Lcom/mbridge/msdk/tracker/network/v$b;)V

    new-instance p2, Lcom/mbridge/msdk/tracker/o$b;

    iget-object p3, p0, Lcom/mbridge/msdk/tracker/o;->a:Lcom/mbridge/msdk/tracker/r;

    invoke-direct {p2, p3, p1}, Lcom/mbridge/msdk/tracker/o$b;-><init>(Lcom/mbridge/msdk/tracker/r;Lcom/mbridge/msdk/tracker/t;)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/v$a;)V

    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/o;->f:Lcom/mbridge/msdk/tracker/network/u;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/tracker/network/toolbox/b;

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/o;->c:Lcom/mbridge/msdk/tracker/p;

    invoke-virtual {v1}, Lcom/mbridge/msdk/tracker/p;->b()Lcom/mbridge/msdk/tracker/network/toolbox/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/b;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;)V

    new-instance v1, Lcom/mbridge/msdk/tracker/network/f;

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/o;->g:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/tracker/network/f;-><init>(Ljava/util/concurrent/Executor;)V

    iget v2, p0, Lcom/mbridge/msdk/tracker/o;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mbridge/msdk/tracker/network/toolbox/o;->a(Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/w;ILcom/mbridge/msdk/tracker/network/b;)Lcom/mbridge/msdk/tracker/network/u;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/o;->f:Lcom/mbridge/msdk/tracker/network/u;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/network/u;->b()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/r;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/o;->a:Lcom/mbridge/msdk/tracker/r;

    return-void
.end method

.method public b(Lcom/mbridge/msdk/tracker/t;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/t;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "send error"

    const-string v2, "TrackManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/tracker/o;->a:Lcom/mbridge/msdk/tracker/r;

    if-eqz p2, :cond_0

    :try_start_0
    const-string p3, "params is null"

    invoke-interface {p2, p1, v3, p3}, Lcom/mbridge/msdk/tracker/r;->a(Lcom/mbridge/msdk/tracker/t;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz p2, :cond_0

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/o;->a()V

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/tracker/o;->a(Lcom/mbridge/msdk/tracker/t;Ljava/util/Map;Z)Lcom/mbridge/msdk/tracker/v;

    move-result-object p2

    iget-object p3, p0, Lcom/mbridge/msdk/tracker/o;->f:Lcom/mbridge/msdk/tracker/network/u;

    invoke-virtual {p3, p2}, Lcom/mbridge/msdk/tracker/network/u;->a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/tracker/network/t;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    sget-boolean p3, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz p3, :cond_2

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object p3, p0, Lcom/mbridge/msdk/tracker/o;->a:Lcom/mbridge/msdk/tracker/r;

    invoke-static {p3}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/mbridge/msdk/tracker/o;->a:Lcom/mbridge/msdk/tracker/r;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, v3, p2}, Lcom/mbridge/msdk/tracker/r;->a(Lcom/mbridge/msdk/tracker/t;ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
