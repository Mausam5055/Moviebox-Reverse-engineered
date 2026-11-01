.class public final Lcom/mbridge/msdk/thrid/okio/l;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mbridge/msdk/thrid/okio/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okio/l;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okio/r;)Lcom/mbridge/msdk/thrid/okio/d;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/m;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okio/m;-><init>(Lcom/mbridge/msdk/thrid/okio/r;)V

    return-object v0
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okio/s;)Lcom/mbridge/msdk/thrid/okio/e;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/n;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okio/n;-><init>(Lcom/mbridge/msdk/thrid/okio/s;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lcom/mbridge/msdk/thrid/okio/t;)Lcom/mbridge/msdk/thrid/okio/r;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/l$a;

    invoke-direct {v0, p1, p0}, Lcom/mbridge/msdk/thrid/okio/l$a;-><init>(Lcom/mbridge/msdk/thrid/okio/t;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/net/Socket;)Lcom/mbridge/msdk/thrid/okio/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mbridge/msdk/thrid/okio/l;->c(Ljava/net/Socket;)Lcom/mbridge/msdk/thrid/okio/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mbridge/msdk/thrid/okio/l;->a(Ljava/io/OutputStream;Lcom/mbridge/msdk/thrid/okio/t;)Lcom/mbridge/msdk/thrid/okio/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okio/a;->a(Lcom/mbridge/msdk/thrid/okio/r;)Lcom/mbridge/msdk/thrid/okio/r;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/mbridge/msdk/thrid/okio/s;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/t;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/t;-><init>()V

    invoke-static {p0, v0}, Lcom/mbridge/msdk/thrid/okio/l;->a(Ljava/io/InputStream;Lcom/mbridge/msdk/thrid/okio/t;)Lcom/mbridge/msdk/thrid/okio/s;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Lcom/mbridge/msdk/thrid/okio/t;)Lcom/mbridge/msdk/thrid/okio/s;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/l$b;

    invoke-direct {v0, p1, p0}, Lcom/mbridge/msdk/thrid/okio/l$b;-><init>(Lcom/mbridge/msdk/thrid/okio/t;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/net/Socket;)Lcom/mbridge/msdk/thrid/okio/s;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mbridge/msdk/thrid/okio/l;->c(Ljava/net/Socket;)Lcom/mbridge/msdk/thrid/okio/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mbridge/msdk/thrid/okio/l;->a(Ljava/io/InputStream;Lcom/mbridge/msdk/thrid/okio/t;)Lcom/mbridge/msdk/thrid/okio/s;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okio/a;->a(Lcom/mbridge/msdk/thrid/okio/s;)Lcom/mbridge/msdk/thrid/okio/s;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/net/Socket;)Lcom/mbridge/msdk/thrid/okio/a;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/l$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okio/l$c;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
