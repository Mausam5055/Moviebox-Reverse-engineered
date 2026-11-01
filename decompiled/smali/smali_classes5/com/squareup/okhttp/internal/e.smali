.class public Lcom/squareup/okhttp/internal/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/e$c;,
        Lcom/squareup/okhttp/internal/e$b;,
        Lcom/squareup/okhttp/internal/e$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/squareup/okhttp/internal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/squareup/okhttp/internal/e;->e()Lcom/squareup/okhttp/internal/e;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/util/List;)[B
    .locals 5

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/Protocol;

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static e()Lcom/squareup/okhttp/internal/e;
    .locals 14

    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v3, [B

    const-class v4, Ljava/net/Socket;

    const-class v5, Ljavax/net/ssl/SSLSocket;

    :try_start_0
    const-string v6, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v6, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    :goto_0
    new-instance v8, Lcom/squareup/okhttp/internal/d;

    const-string v6, "setUseSessionTickets"

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v2

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v7}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v6, Lcom/squareup/okhttp/internal/d;

    const-string v7, "setHostname"

    new-array v10, v1, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-direct {v6, v9, v7, v10}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    const-string v7, "android.net.TrafficStats"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v10, "tagSocket"

    new-array v11, v1, [Ljava/lang/Class;

    aput-object v4, v11, v2

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v11, "untagSocket"

    new-array v12, v1, [Ljava/lang/Class;

    aput-object v4, v12, v2

    invoke-virtual {v7, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v7, "android.net.Network"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v7, Lcom/squareup/okhttp/internal/d;

    const-string v11, "getAlpnSelectedProtocol"

    new-array v12, v2, [Ljava/lang/Class;

    invoke-direct {v7, v3, v11, v12}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v11, Lcom/squareup/okhttp/internal/d;

    const-string v12, "setAlpnProtocols"

    new-array v13, v1, [Ljava/lang/Class;

    aput-object v3, v13, v2

    invoke-direct {v11, v9, v12, v13}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v9, v11

    goto :goto_1

    :catch_1
    move-object v7, v9

    :catch_2
    :goto_1
    move-object v11, v4

    move-object v12, v7

    move-object v13, v9

    goto :goto_2

    :catch_3
    move-object v4, v9

    move-object v7, v4

    goto :goto_1

    :catch_4
    move-object v4, v9

    move-object v7, v4

    move-object v10, v7

    goto :goto_1

    :goto_2
    :try_start_6
    new-instance v3, Lcom/squareup/okhttp/internal/e$a;

    move-object v7, v3

    move-object v9, v6

    invoke-direct/range {v7 .. v13}, Lcom/squareup/okhttp/internal/e$a;-><init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/d;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/d;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v3

    :catch_5
    :try_start_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$Provider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$ClientProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$ServerProvider"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v0, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v5, v6, v2

    aput-object v4, v6, v1

    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v0, "get"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v0, "remove"

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v5, v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-instance v0, Lcom/squareup/okhttp/internal/e$b;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/squareup/okhttp/internal/e$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    return-object v0

    :catch_6
    new-instance v0, Lcom/squareup/okhttp/internal/e;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/e;-><init>()V

    return-object v0
.end method

.method public static f()Lcom/squareup/okhttp/internal/e;
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "OkHttp"

    return-object v0
.end method

.method public h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
