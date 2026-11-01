.class public Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;
.super Lcom/mbridge/msdk/thrid/okhttp/n;

# interfaces
.implements Lcom/mbridge/msdk/system/NoProGuard;


# static fields
.field private static TAG:Ljava/lang/String; = "OKHTTPEventListener"


# instance fields
.field private final monitor:Lcom/mbridge/msdk/tracker/network/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/tracker/network/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/n;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    return-void
.end method


# virtual methods
.method public callEnd(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->a(Ljava/io/IOException;)V

    return-void
.end method

.method public callFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->a(Ljava/io/IOException;)V

    return-void
.end method

.method public callStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/network/p;->a(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    return-void
.end method

.method public connectEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/mbridge/msdk/thrid/okhttp/u;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "connection_end"

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lcom/mbridge/msdk/tracker/network/p;->a(Lcom/mbridge/msdk/thrid/okhttp/u;Ljava/io/IOException;)V

    return-void
.end method

.method public connectFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/mbridge/msdk/thrid/okhttp/u;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p4, p5}, Lcom/mbridge/msdk/tracker/network/p;->a(Lcom/mbridge/msdk/thrid/okhttp/u;Ljava/io/IOException;)V

    return-void
.end method

.method public connectStart(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "connection_start"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/tracker/network/p;->a(Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    return-void
.end method

.method public connectionAcquired(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->a(Lcom/mbridge/msdk/thrid/okhttp/g;)V

    return-void
.end method

.method public connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->b(Lcom/mbridge/msdk/thrid/okhttp/g;)V

    return-void
.end method

.method public dnsEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/thrid/okhttp/d;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "dns_end"

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/tracker/network/p;->a(Ljava/util/List;)V

    return-void
.end method

.method public dnsStart(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "dns_start"

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/p;->a()V

    return-void
.end method

.method public requestBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/d;J)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "request_body_end"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/tracker/network/p;->b(J)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    const-string p2, "transmission_start"

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    return-void
.end method

.method public requestBodyStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "request_body_start"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/p;->R()V

    return-void
.end method

.method public requestHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/w;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "request_header_end"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)V

    return-void
.end method

.method public requestHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "request_header_start"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/p;->S()V

    return-void
.end method

.method public responseBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/d;J)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "response_body_end"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/tracker/network/p;->h(J)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/tracker/network/p;->d(J)V

    return-void
.end method

.method public responseBodyStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "response_body_start"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/p;->U()V

    return-void
.end method

.method public responseHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/y;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "response_header_end"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    return-void
.end method

.method public responseHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "response_header_start"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/p;->V()V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    const-string v0, "transmission_end"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    return-void
.end method

.method public secureConnectEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/o;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "secure_connect_end"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/p;->a(Lcom/mbridge/msdk/thrid/okhttp/o;)V

    return-void
.end method

.method public secureConnectStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "secure_connect_start"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/p;->W()V

    return-void
.end method
