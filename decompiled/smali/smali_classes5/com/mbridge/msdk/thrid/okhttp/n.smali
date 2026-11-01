.class public abstract Lcom/mbridge/msdk/thrid/okhttp/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/n$c;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/mbridge/msdk/thrid/okhttp/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/n$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/n$a;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/n;->NONE:Lcom/mbridge/msdk/thrid/okhttp/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/n$c;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/n$b;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/n$b;-><init>(Lcom/mbridge/msdk/thrid/okhttp/n;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 0

    return-void
.end method

.method public callFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public callStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 0

    return-void
.end method

.method public connectEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/mbridge/msdk/thrid/okhttp/u;)V
    .locals 0

    return-void
.end method

.method public connectFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/mbridge/msdk/thrid/okhttp/u;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public connectStart(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public connectionAcquired(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V
    .locals 0

    return-void
.end method

.method public connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V
    .locals 0

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

    return-void
.end method

.method public dnsStart(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/d;J)V
    .locals 0

    return-void
.end method

.method public requestBodyStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 0

    return-void
.end method

.method public requestHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/w;)V
    .locals 0

    return-void
.end method

.method public requestHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 0

    return-void
.end method

.method public responseBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/d;J)V
    .locals 0

    return-void
.end method

.method public responseBodyStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 0

    return-void
.end method

.method public responseHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/y;)V
    .locals 0

    return-void
.end method

.method public responseHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 0

    return-void
.end method

.method public secureConnectEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/o;)V
    .locals 0

    return-void
.end method

.method public secureConnectStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V
    .locals 0

    return-void
.end method
