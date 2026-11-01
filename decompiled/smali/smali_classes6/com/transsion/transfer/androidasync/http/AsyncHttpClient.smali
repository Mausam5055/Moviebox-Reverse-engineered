.class public Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$i;
    }
.end annotation


# static fields
.field private static f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# instance fields
.field final a:Ljava/util/List;

.field b:Lcom/transsion/transfer/androidasync/http/n;

.field c:Lcom/transsion/transfer/androidasync/http/t;

.field d:Lcom/transsion/transfer/androidasync/http/v;

.field e:Lcom/transsion/transfer/androidasync/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance p1, Lcom/transsion/transfer/androidasync/http/t;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/t;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->c:Lcom/transsion/transfer/androidasync/http/t;

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->z(Lcom/transsion/transfer/androidasync/http/g;)V

    new-instance p1, Lcom/transsion/transfer/androidasync/http/n;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/n;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->b:Lcom/transsion/transfer/androidasync/http/n;

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->z(Lcom/transsion/transfer/androidasync/http/g;)V

    new-instance p1, Lcom/transsion/transfer/androidasync/http/v;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/v;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->d:Lcom/transsion/transfer/androidasync/http/v;

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->z(Lcom/transsion/transfer/androidasync/http/g;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->b:Lcom/transsion/transfer/androidasync/http/n;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/z;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/z;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/n;->A(Lcom/transsion/transfer/androidasync/http/m;)V

    return-void
.end method

.method private A(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 8

    new-instance v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-virtual {p1, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    return-void
.end method

.method private B(Ldv/b;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ldv/b;->b(Lcom/transsion/transfer/androidasync/http/k;)V

    :cond_0
    return-void
.end method

.method private C(Ldv/b;Lcom/transsion/transfer/androidasync/http/k;JJ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p6}, Ldv/b;->a(Lcom/transsion/transfer/androidasync/http/k;JJ)V

    :cond_0
    return-void
.end method

.method private D(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p2, p4}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p5}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p4, p3, p5}, Lbv/g;->c(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic E(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic F(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lfv/a;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 6

    if-eqz p4, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->B(Ldv/b;Lcom/transsion/transfer/androidasync/http/k;)V

    invoke-interface {p3, p5}, Lfv/a;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p3

    new-instance p4, Lcom/transsion/transfer/androidasync/http/b;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/transsion/transfer/androidasync/http/b;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;)V

    invoke-interface {p3, p4}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    invoke-virtual {p2, p3}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    return-void
.end method

.method private static synthetic G(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p3, p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/transsion/transfer/androidasync/http/f0;->F(Lcom/transsion/transfer/androidasync/http/Headers;Lcom/transsion/transfer/androidasync/http/k;)Lcom/transsion/transfer/androidasync/http/b0;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p3, Lcom/transsion/transfer/androidasync/http/WebSocketHandshakeException;

    const-string v0, "Unable to complete websocket handshake"

    invoke-direct {p3, v0}, Lcom/transsion/transfer/androidasync/http/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/transsion/transfer/androidasync/p;->close()V

    invoke-virtual {p0, p3}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1, p3, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V

    :cond_4
    return-void
.end method

.method private H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V
    .locals 1

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    if-eqz p2, :cond_0

    const-string v0, "Connection error"

    invoke-virtual {p4, v0, p2}, Lcom/transsion/transfer/androidasync/http/j;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "Connection successful"

    invoke-virtual {p4, v0}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p5, p2, p3}, Ldv/a;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lbv/d$a;

    invoke-direct {p1}, Lbv/d$a;-><init>()V

    invoke-virtual {p3, p1}, Lcom/transsion/transfer/androidasync/q;->t(Lbv/d;)V

    invoke-virtual {p3}, Lcom/transsion/transfer/androidasync/http/l;->close()V

    :cond_2
    return-void
.end method

.method private static I(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/transfer/androidasync/http/j;->d(Ljava/lang/String;I)V

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->G(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lfv/a;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->F(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lfv/a;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->E(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;Lcom/transsion/transfer/androidasync/http/g$g;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->u(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;Lcom/transsion/transfer/androidasync/http/g$g;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic h(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->B(Ldv/b;Lcom/transsion/transfer/androidasync/http/k;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/http/k;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->C(Ldv/b;Lcom/transsion/transfer/androidasync/http/k;JJ)V

    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->D(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->o(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic m(Lcom/transsion/transfer/androidasync/http/j;)J
    .locals 2

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->y(Lcom/transsion/transfer/androidasync/http/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic n(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->I(Lcom/transsion/transfer/androidasync/http/j;)V

    return-void
.end method

.method private static o(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    :cond_0
    return-void
.end method

.method private r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    invoke-virtual {v0, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    :goto_0
    return-void
.end method

.method private s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    const/16 v0, 0xf

    move v6, p2

    if-le v6, v0, :cond_0

    new-instance v2, Lcom/transsion/transfer/androidasync/http/RedirectLimitExceededException;

    const-string v0, "too many redirects"

    invoke-direct {v2, v0}, Lcom/transsion/transfer/androidasync/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    new-instance v10, Lcom/transsion/transfer/androidasync/http/g$g;

    invoke-direct {v10}, Lcom/transsion/transfer/androidasync/http/g$g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/transsion/transfer/androidasync/http/j;->l:J

    iput-object v8, v10, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    const-string v0, "Executing request."

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/androidasync/http/g;

    invoke-interface {v1, v10}, Lcom/transsion/transfer/androidasync/http/g;->a(Lcom/transsion/transfer/androidasync/http/g$e;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->o()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v11, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/g$g;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V

    iput-object v11, v9, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->h:Ljava/lang/Runnable;

    iget-object v0, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->y(Lcom/transsion/transfer/androidasync/http/j;)J

    move-result-wide v1

    invoke-virtual {v0, v11, v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->E(Ljava/lang/Runnable;J)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object v0

    iput-object v0, v9, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    :cond_2
    new-instance v11, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;Lcom/transsion/transfer/androidasync/http/g$g;I)V

    iput-object v11, v10, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lbv/b;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->I(Lcom/transsion/transfer/androidasync/http/j;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->e()Lcv/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->e()Lcv/a;

    move-result-object v2

    invoke-interface {v2}, Lcv/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    :cond_3
    iget-object v0, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/androidasync/http/g;

    invoke-interface {v1, v10}, Lcom/transsion/transfer/androidasync/http/g;->e(Lcom/transsion/transfer/androidasync/http/g$a;)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, v10, Lcom/transsion/transfer/androidasync/http/g$a;->d:Lcom/transsion/transfer/androidasync/future/a;

    invoke-virtual {p3, v1}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    return-void

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " middlewares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V

    return-void
.end method

.method private u(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;Lcom/transsion/transfer/androidasync/http/g$g;)V
    .locals 9

    new-instance v8, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;Lcom/transsion/transfer/androidasync/http/g$g;I)V

    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$c;

    invoke-direct {p1, p0, v8}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$c;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/l;)V

    iput-object p1, p5, Lcom/transsion/transfer/androidasync/http/g$c;->h:Lbv/a;

    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;

    invoke-direct {p1, p0, v8}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/l;)V

    iput-object p1, p5, Lcom/transsion/transfer/androidasync/http/g$c;->i:Lbv/a;

    iput-object v8, p5, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    iget-object p1, p5, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-virtual {v8, p1}, Lcom/transsion/transfer/androidasync/http/l;->S(Lcom/transsion/transfer/androidasync/j;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/transfer/androidasync/http/g;

    invoke-interface {p2, p5}, Lcom/transsion/transfer/androidasync/http/g;->f(Lcom/transsion/transfer/androidasync/http/g$c;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    return-void
.end method

.method public static w()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 2

    sget-object v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->r()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    :cond_0
    sget-object v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    return-object v0
.end method

.method private static y(Lcom/transsion/transfer/androidasync/http/j;)J
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->o()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public J(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->K(Lcom/transsion/transfer/androidasync/http/j;[Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method

.method public K(Lcom/transsion/transfer/androidasync/http/j;[Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/f0;->C(Lcom/transsion/transfer/androidasync/http/j;[Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/http/c;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/transfer/androidasync/http/c;-><init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->p(Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    return-object p2
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 3

    new-instance v0, Lcom/transsion/transfer/androidasync/http/h;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wss://"

    const-string v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/http/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->J(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    new-instance v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    return-object v0
.end method

.method public q(Lcom/transsion/transfer/androidasync/http/j;Lfv/a;Ldv/b;)Lcom/transsion/transfer/androidasync/future/w;
    .locals 3

    new-instance v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V

    new-instance v1, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    new-instance v2, Lcom/transsion/transfer/androidasync/http/a;

    invoke-direct {v2, p0, p3, v1, p2}, Lcom/transsion/transfer/androidasync/http/a;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lfv/a;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    return-object v1
.end method

.method public t(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 8

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x2000

    invoke-direct {v2, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V

    new-instance v6, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;

    invoke-direct {v6, p0, p2, v2, v3}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/io/OutputStream;Ljava/io/File;)V

    invoke-virtual {v6, p2}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    new-instance v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;Lcom/transsion/transfer/androidasync/future/w;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, v7}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V

    return-object v6

    :catch_0
    move-exception p1

    new-instance p2, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    return-object p2
.end method

.method public v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    new-instance v0, Lfv/f;

    invoke-direct {v0}, Lfv/f;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->q(Lcom/transsion/transfer/androidasync/http/j;Lfv/a;Ldv/b;)Lcom/transsion/transfer/androidasync/future/w;

    move-result-object p1

    return-object p1
.end method

.method public x()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    return-object v0
.end method

.method public z(Lcom/transsion/transfer/androidasync/http/g;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
