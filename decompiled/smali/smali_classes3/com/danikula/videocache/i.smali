.class Lcom/danikula/videocache/i;
.super Ljava/net/ProxySelector;


# static fields
.field private static final d:Ljava/util/List;


# instance fields
.field private final a:Ljava/net/ProxySelector;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/i;->d:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/ProxySelector;

    iput-object p1, p0, Lcom/danikula/videocache/i;->a:Ljava/net/ProxySelector;

    invoke-static {p2}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/danikula/videocache/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/danikula/videocache/i;->c:I

    return-void
.end method

.method static a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    new-instance v1, Lcom/danikula/videocache/i;

    invoke-direct {v1, v0, p0, p1}, Lcom/danikula/videocache/i;-><init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/danikula/videocache/i;->a:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/danikula/videocache/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/danikula/videocache/i;->c:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/danikula/videocache/i;->d:Ljava/util/List;

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/i;->a:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/danikula/videocache/i;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :catchall_0
    sget-object p1, Lcom/danikula/videocache/i;->d:Ljava/util/List;

    return-object p1
.end method
