.class Lcom/squareup/okhttp/internal/e$a;
.super Lcom/squareup/okhttp/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/squareup/okhttp/internal/d;

.field private final c:Lcom/squareup/okhttp/internal/d;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Lcom/squareup/okhttp/internal/d;

.field private final g:Lcom/squareup/okhttp/internal/d;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/d;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/e;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/e$a;->b:Lcom/squareup/okhttp/internal/d;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/e$a;->c:Lcom/squareup/okhttp/internal/d;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/e$a;->d:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/e$a;->e:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/squareup/okhttp/internal/e$a;->f:Lcom/squareup/okhttp/internal/d;

    iput-object p6, p0, Lcom/squareup/okhttp/internal/e$a;->g:Lcom/squareup/okhttp/internal/d;

    return-void
.end method


# virtual methods
.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/e$a;->b:Lcom/squareup/okhttp/internal/d;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/squareup/okhttp/internal/d;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/e$a;->c:Lcom/squareup/okhttp/internal/d;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/squareup/okhttp/internal/d;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/squareup/okhttp/internal/e$a;->g:Lcom/squareup/okhttp/internal/d;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/squareup/okhttp/internal/d;->g(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/squareup/okhttp/internal/e;->b(Ljava/util/List;)[B

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    iget-object p2, p0, Lcom/squareup/okhttp/internal/e$a;->g:Lcom/squareup/okhttp/internal/d;

    invoke-virtual {p2, p1, p3}, Lcom/squareup/okhttp/internal/d;->f(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/g;->o(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    throw p1
.end method

.method public h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/e$a;->f:Lcom/squareup/okhttp/internal/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/d;->g(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/e$a;->f:Lcom/squareup/okhttp/internal/d;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/squareup/okhttp/internal/d;->f(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v0, Lcom/squareup/okhttp/internal/g;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2
    return-object v1
.end method
