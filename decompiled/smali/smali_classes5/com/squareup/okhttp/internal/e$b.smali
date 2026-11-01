.class Lcom/squareup/okhttp/internal/e$b;
.super Lcom/squareup/okhttp/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/Class;

.field private final f:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/e;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/e$b;->b:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/e$b;->c:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/e$b;->d:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/e$b;->e:Ljava/lang/Class;

    iput-object p5, p0, Lcom/squareup/okhttp/internal/e$b;->f:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/e$b;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    const/4 p2, 0x2

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/okhttp/Protocol;

    sget-object v6, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-class p3, Lcom/squareup/okhttp/internal/e;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/e$b;->e:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/e$b;->f:Ljava/lang/Class;

    new-array v5, p2, [Ljava/lang/Class;

    aput-object v2, v5, v3

    aput-object v4, v5, v0

    new-instance v2, Lcom/squareup/okhttp/internal/e$c;

    invoke-direct {v2, v1}, Lcom/squareup/okhttp/internal/e$c;-><init>(Ljava/util/List;)V

    invoke-static {p3, v5, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/e$b;->b:Ljava/lang/reflect/Method;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    aput-object p3, p2, v0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/e$b;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/e$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/e$c;->a(Lcom/squareup/okhttp/internal/e$c;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/e$c;->b(Lcom/squareup/okhttp/internal/e$c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/squareup/okhttp/internal/c;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/squareup/okhttp/internal/e$c;->a(Lcom/squareup/okhttp/internal/e$c;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/squareup/okhttp/internal/e$c;->b(Lcom/squareup/okhttp/internal/e$c;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
