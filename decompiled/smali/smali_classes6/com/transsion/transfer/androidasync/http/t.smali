.class public Lcom/transsion/transfer/androidasync/http/t;
.super Lcom/transsion/transfer/androidasync/http/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/t$d;,
        Lcom/transsion/transfer/androidasync/http/t$e;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field protected d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field e:Z

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/util/Hashtable;

.field i:I


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V
    .locals 2

    const-string v0, "http"

    const/16 v1, 0x50

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/http/t;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/a0;-><init>()V

    const v0, 0x493e0

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/t;->c:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/t;->h:Ljava/util/Hashtable;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/t;->i:I

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/t;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/t;->a:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/transfer/androidasync/http/t;->b:I

    return-void
.end method

.method public static synthetic i(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/t;->v(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/transfer/androidasync/http/t;ILcom/transsion/transfer/androidasync/http/g$a;Ljava/net/InetAddress;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/t;->s(ILcom/transsion/transfer/androidasync/http/g$a;Ljava/net/InetAddress;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/transfer/androidasync/http/t;ILcom/transsion/transfer/androidasync/http/g$a;[Ljava/net/InetAddress;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/t;->t(ILcom/transsion/transfer/androidasync/http/g$a;[Ljava/net/InetAddress;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/t;->u(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic m(Lcom/transsion/transfer/androidasync/http/t;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/t;->w(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/t$d;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/http/t$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/transfer/androidasync/http/t$d;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/t$d;-><init>()V

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/t;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private q(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/http/t$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/http/t$b;-><init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    new-instance v0, Lcom/transsion/transfer/androidasync/http/t$c;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/http/t$c;-><init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    return-void
.end method

.method private synthetic s(ILcom/transsion/transfer/androidasync/http/g$a;Ljava/net/InetAddress;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 5

    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "%s:%s"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/t;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->x()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object p2

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance p1, Lcom/transsion/transfer/androidasync/http/s;

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/s;-><init>(Lcom/transsion/transfer/androidasync/future/w;)V

    invoke-virtual {p2, v1, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->n(Ljava/net/InetSocketAddress;Lbv/b;)Lcom/transsion/transfer/androidasync/future/a;

    return-object v0
.end method

.method private synthetic t(ILcom/transsion/transfer/androidasync/http/g$a;[Ljava/net/InetAddress;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/http/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/transfer/androidasync/http/r;-><init>(Lcom/transsion/transfer/androidasync/http/t;ILcom/transsion/transfer/androidasync/http/g$a;)V

    invoke-static {p3, v0}, Lcom/transsion/transfer/androidasync/future/l;->d([Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method

.method private synthetic u(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;)V
    .locals 6

    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lbv/b;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/t;->z(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;IZLbv/b;)Lbv/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p4, p2}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    return-void
.end method

.method private synthetic v(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILjava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V
    .locals 6

    if-nez p5, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lbv/b;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/t;->z(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;IZLbv/b;)Lbv/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, p5}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    return-void

    :cond_1
    iget-object p2, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string p3, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {p2, p3}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/transsion/transfer/androidasync/http/t;->q(Lcom/transsion/transfer/androidasync/j;)V

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-direct {p0, p5, p1}, Lcom/transsion/transfer/androidasync/http/t;->y(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/j;)V

    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/http/t$d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/androidasync/http/t$e;

    iget-object v2, v1, Lcom/transsion/transfer/androidasync/http/t$e;->a:Lcom/transsion/transfer/androidasync/j;

    iget-wide v3, v1, Lcom/transsion/transfer/androidasync/http/t$e;->b:J

    iget v1, p0, Lcom/transsion/transfer/androidasync/http/t;->c:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->pop()Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/p;->close()V

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->a:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->b:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private x(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/t;->p(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->m()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/transsion/transfer/androidasync/http/t;->n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/http/t$d;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->a:I

    :goto_0
    iget v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->a:I

    iget v2, p0, Lcom/transsion/transfer/androidasync/http/t;->i:I

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->b:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/t$d;->b:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/androidasync/http/g$a;

    iget-object v2, v1, Lcom/transsion/transfer/androidasync/http/g$a;->d:Lcom/transsion/transfer/androidasync/future/a;

    check-cast v2, Lcom/transsion/transfer/androidasync/future/n;

    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/http/t;->e(Lcom/transsion/transfer/androidasync/http/g$a;)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/transfer/androidasync/future/n;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/t;->w(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private y(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/t;->p(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/http/j;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/http/j;->m()I

    move-result p2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/transsion/transfer/androidasync/http/t;->n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/transsion/transfer/androidasync/http/t$e;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/http/t$e;-><init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/http/t;->o(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/t$d;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->push(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lcom/transsion/transfer/androidasync/http/t$a;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/transsion/transfer/androidasync/http/t$a;-><init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/util/ArrayDeque;Lcom/transsion/transfer/androidasync/http/t$e;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public b(Lcom/transsion/transfer/androidasync/http/g$g;)V
    .locals 3

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->a:Lcom/transsion/transfer/androidasync/util/e;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/util/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/t;->q(Lcom/transsion/transfer/androidasync/j;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$g;->k:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/t;->r(Lcom/transsion/transfer/androidasync/http/g$g;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string v2, "closing out socket (not keep alive)"

    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/t;->x(Lcom/transsion/transfer/androidasync/http/j;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-direct {p0, v0, v1}, Lcom/transsion/transfer/androidasync/http/t;->y(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/t;->x(Lcom/transsion/transfer/androidasync/http/j;)V

    return-void

    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string v2, "closing out socket (exception)"

    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/t;->x(Lcom/transsion/transfer/androidasync/http/j;)V

    throw v0
.end method

.method public e(Lcom/transsion/transfer/androidasync/http/g$a;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 11

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/t;->p(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne v4, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->a:Lcom/transsion/transfer/androidasync/util/e;

    const-string v2, "socket-owner"

    invoke-virtual {v0, v2, p0}, Lcom/transsion/transfer/androidasync/util/e;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/http/j;->m()I

    move-result v2

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/transsion/transfer/androidasync/http/t;->n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/t;->o(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/t$d;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget v2, v0, Lcom/transsion/transfer/androidasync/http/t$d;->a:I

    iget v5, p0, Lcom/transsion/transfer/androidasync/http/t;->i:I

    if-lt v2, v5, :cond_1

    new-instance v1, Lcom/transsion/transfer/androidasync/future/n;

    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/future/n;-><init>()V

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/t$d;->b:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v0, Lcom/transsion/transfer/androidasync/http/t$d;->a:I

    :goto_0
    iget-object v2, v0, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/transsion/transfer/androidasync/http/t$d;->c:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/androidasync/http/t$e;

    iget-object v6, v2, Lcom/transsion/transfer/androidasync/http/t$e;->a:Lcom/transsion/transfer/androidasync/j;

    iget-wide v7, v2, Lcom/transsion/transfer/androidasync/http/t$e;->b:J

    iget v2, p0, Lcom/transsion/transfer/androidasync/http/t;->c:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    invoke-interface {v6, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    invoke-interface {v6}, Lcom/transsion/transfer/androidasync/p;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string v2, "Reusing keep-alive socket"

    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lbv/b;

    invoke-interface {p1, v1, v6}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    new-instance p1, Lcom/transsion/transfer/androidasync/future/n;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/future/n;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/future/n;->setComplete()Z

    monitor-exit p0

    return-object p1

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/t;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/t;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->x()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->p(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/androidasync/http/o;

    invoke-direct {v2, p0, v4, p1}, Lcom/transsion/transfer/androidasync/http/o;-><init>(Lcom/transsion/transfer/androidasync/http/t;ILcom/transsion/transfer/androidasync/http/g$a;)V

    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/future/f;->a(Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/androidasync/http/p;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/transsion/transfer/androidasync/http/p;-><init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;I)V

    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/future/f;->e(Lcom/transsion/transfer/androidasync/future/d;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/future/w;->E(Lcom/transsion/transfer/androidasync/future/f;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/androidasync/http/q;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/transsion/transfer/androidasync/http/q;-><init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;I)V

    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    return-object v0

    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/t;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    iget v2, p0, Lcom/transsion/transfer/androidasync/http/t;->g:I

    invoke-virtual {v1, v0, v2}, Lcom/transsion/transfer/androidasync/http/j;->d(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/http/j;->m()I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    move v7, v4

    :goto_2
    if-eqz v5, :cond_9

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using proxy: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/t;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->x()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v8

    iget-object v6, p1, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lbv/b;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/t;->z(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;IZLbv/b;)Lbv/b;

    move-result-object p1

    invoke-virtual {v8, v0, v7, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->m(Ljava/lang/String;ILbv/b;)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object p1

    return-object p1

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method n(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "//"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?proxy="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/net/Uri;)I
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget p1, p0, Lcom/transsion/transfer/androidasync/http/t;->b:I

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected r(Lcom/transsion/transfer/androidasync/http/g$g;)Z
    .locals 2

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/http/g$i;->protocol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v1}, Lcom/transsion/transfer/androidasync/http/g$i;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/HttpUtil;->e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/http/HttpUtil;->d(Lcom/transsion/transfer/androidasync/http/Protocol;Lcom/transsion/transfer/androidasync/http/Headers;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected z(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;IZLbv/b;)Lbv/b;
    .locals 0

    return-object p5
.end method
