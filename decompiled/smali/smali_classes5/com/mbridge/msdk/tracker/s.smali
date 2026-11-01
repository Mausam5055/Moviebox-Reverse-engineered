.class Lcom/mbridge/msdk/tracker/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/tracker/s$b;,
        Lcom/mbridge/msdk/tracker/s$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/mbridge/msdk/tracker/k;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/lang/Object;

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:J

.field private volatile l:Z

.field private volatile m:Z


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/k;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/s;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/s;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/s;->j:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mbridge/msdk/tracker/s;->k:J

    iput-boolean v1, p0, Lcom/mbridge/msdk/tracker/s;->l:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/tracker/s;->m:Z

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/k;->d()Lcom/mbridge/msdk/tracker/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/k;->i()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/tracker/s;->b:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/k;->l()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/tracker/s;->c:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/k;->j()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/tracker/s;->d:I

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/s;J)J
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/tracker/s;->k:J

    return-wide p1
.end method

.method private a()V
    .locals 3

    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/c;->a()I

    move-result v0

    sget-boolean v1, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u5220\u9664\u65e0\u6548\u6570\u636e\u7684\u6570\u91cf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u5f53\u524d\u5269\u4f59\u4e8b\u4ef6\u6570 = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u6570\u636e\u5e93\u4e2d\u5269\u4f59\u4e8b\u4ef6\u6570 = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/c;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/s;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/s;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/s;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/s;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/tracker/s;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/c;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/tracker/i;

    invoke-static {v3}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/mbridge/msdk/tracker/i;->g()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/mbridge/msdk/tracker/i;->c()I

    move-result v4

    iget v6, p0, Lcom/mbridge/msdk/tracker/s;->d:I

    if-lt v4, v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3}, Lcom/mbridge/msdk/tracker/i;->h()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/mbridge/msdk/tracker/i;->b()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    if-nez v4, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/mbridge/msdk/tracker/i;->c()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/tracker/i;->a(I)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/tracker/i;->b(I)V

    invoke-virtual {v3, p2}, Lcom/mbridge/msdk/tracker/i;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/tracker/i;->b(I)V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/tracker/c;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/tracker/s;)Lcom/mbridge/msdk/tracker/k;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/c;->c(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/tracker/s;)I
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/s;->d()I

    move-result p0

    return p0
.end method

.method private c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    iget v1, p0, Lcom/mbridge/msdk/tracker/s;->b:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/c;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/mbridge/msdk/tracker/s;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/tracker/s;)Lcom/mbridge/msdk/tracker/c;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/tracker/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/s;->h()V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/tracker/s;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/s;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/tracker/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/tracker/s;->k:J

    return-wide v0
.end method

.method private h()V
    .locals 7

    const-string v0, "TrackManager"

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/s;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v1}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " report: \u6ca1\u6709\u53ef\u4ee5\u4e0a\u62a5\u7684\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/tracker/s;->a(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    sget-boolean v3, Lcom/mbridge/msdk/tracker/a;->a:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v5}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " report: \u4e0a\u62a5\u7684\u6570\u91cf = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u5f53\u524d\u5269\u4f59\u4e8b\u4ef6\u6570 = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u6570\u636e\u5e93\u4e2d\u5269\u4f59\u4e8b\u4ef6\u6570 = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/c;->b()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/k;->a()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v5}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " report environment check failed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    if-nez v4, :cond_5

    sget-boolean v1, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report \u5931\u8d25\uff0c\u8bf7\u68c0\u67e5 TrackConfig \u914d\u7f6e\u662f\u5426\u6b63\u786e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/k;->m()Lcom/mbridge/msdk/tracker/o;

    move-result-object v2

    new-instance v3, Lcom/mbridge/msdk/tracker/s$a;

    iget-object v4, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/mbridge/msdk/tracker/s$a;-><init>(Landroid/os/Handler;Lcom/mbridge/msdk/tracker/s;)V

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/tracker/o;->a(Lcom/mbridge/msdk/tracker/r;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v4}, Lcom/mbridge/msdk/tracker/k;->f()Lcom/mbridge/msdk/tracker/d;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v5}, Lcom/mbridge/msdk/tracker/k;->u()Lcom/mbridge/msdk/tracker/m;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/k;->o()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v4, v5, v1, v6}, Lcom/mbridge/msdk/tracker/d;->a(Lcom/mbridge/msdk/tracker/m;Ljava/util/List;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    sget-boolean v5, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mbridge/msdk/tracker/s;->e:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " report decorate request params failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    new-instance v0, Lcom/mbridge/msdk/tracker/t;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/tracker/t;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/mbridge/msdk/tracker/o;->b(Lcom/mbridge/msdk/tracker/t;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/tracker/s;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/tracker/s;->c:I

    return p0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/tracker/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/s;->i()V

    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/c;->c()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/e;)V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-wide v2, p0, Lcom/mbridge/msdk/tracker/s;->k:J

    iget v4, p0, Lcom/mbridge/msdk/tracker/s;->c:I

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/mbridge/msdk/tracker/y;->a(IJJ)J

    move-result-wide v2

    iget v0, p0, Lcom/mbridge/msdk/tracker/s;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    long-to-float v1, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected f()Z
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    iget v2, p0, Lcom/mbridge/msdk/tracker/s;->b:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/s;->j:Z

    return v0
.end method

.method public j()V
    .locals 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "report_timer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/mbridge/msdk/tracker/s$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/mbridge/msdk/tracker/s$b;-><init>(Landroid/os/Looper;Lcom/mbridge/msdk/tracker/s;)V

    iput-object v1, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/mbridge/msdk/tracker/s;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/s;->j:Z

    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/s;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/tracker/s;->l:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/mbridge/msdk/tracker/s;->l:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/s;->l()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/tracker/s;->m:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/mbridge/msdk/tracker/s;->m:Z

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/s;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/tracker/c;->b()I

    move-result v1

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/s;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
