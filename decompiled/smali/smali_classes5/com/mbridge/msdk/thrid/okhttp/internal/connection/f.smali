.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okhttp/a;

.field private final b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;

.field private final c:Lcom/mbridge/msdk/thrid/okhttp/d;

.field private final d:Lcom/mbridge/msdk/thrid/okhttp/n;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/a;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->h:Ljava/util/List;

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;

    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->c:Lcom/mbridge/msdk/thrid/okhttp/d;

    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/a;->k()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/a;->f()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a(Lcom/mbridge/msdk/thrid/okhttp/q;Ljava/net/Proxy;)V

    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/mbridge/msdk/thrid/okhttp/q;Ljava/net/Proxy;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->e:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {p2}, Lcom/mbridge/msdk/thrid/okhttp/a;->h()Ljava/net/ProxySelector;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/q;->m()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->e:Ljava/util/List;

    :goto_1
    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->f:I

    return-void
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/a;->k()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/q;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/a;->k()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/q;->j()I

    move-result v0

    :goto_1
    const/4 v2, 0x1

    if-lt v0, v2, :cond_6

    const v2, 0xffff

    if-gt v0, v2, :cond_6

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->g:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->c:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {p1, v2, v1}, Lcom/mbridge/msdk/thrid/okhttp/n;->dnsStart(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/a;->c()Lcom/mbridge/msdk/thrid/okhttp/m;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/m;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->c:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {v2, v3, v1, p1}, Lcom/mbridge/msdk/thrid/okhttp/n;->dnsEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->g:Ljava/util/List;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    :cond_5
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/a;->c()Lcom/mbridge/msdk/thrid/okhttp/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()Z
    .locals 2

    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->f:I

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Ljava/net/Proxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->e:Ljava/util/List;

    iget v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a(Ljava/net/Proxy;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/a;->k()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/q;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/a0;Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/a0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/a;->k()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/q;->m()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/a0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;->b(Lcom/mbridge/msdk/thrid/okhttp/a0;)V

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->d()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    new-instance v4, Lcom/mbridge/msdk/thrid/okhttp/a0;

    iget-object v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    iget-object v6, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->g:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5, v1, v6}, Lcom/mbridge/msdk/thrid/okhttp/a0;-><init>(Lcom/mbridge/msdk/thrid/okhttp/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;->c(Lcom/mbridge/msdk/thrid/okhttp/a0;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
