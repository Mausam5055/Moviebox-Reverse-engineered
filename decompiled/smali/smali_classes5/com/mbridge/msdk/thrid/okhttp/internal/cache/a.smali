.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/r;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/cache/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/mbridge/msdk/thrid/okhttp/p;Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/p;
    .locals 7

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;-><init>()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/p;->b()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/thrid/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    invoke-virtual {v6, v0, v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/p$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/p;->b()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/thrid/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/p$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->o()Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/z;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/r$a;)Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b$a;

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->d()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b$a;-><init>(JLcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/y;)V

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b$a;->c()Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b;

    move-result-object v0

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b;->b:Lcom/mbridge/msdk/thrid/okhttp/y;

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/y$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;-><init>()V

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->d()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/u;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(I)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->c:Lcom/mbridge/msdk/thrid/okhttp/z;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/z;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->o()Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    move-result v1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->o()Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->m()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->m()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Lcom/mbridge/msdk/thrid/okhttp/p;Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->q()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v1

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v0

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/z;->close()V

    throw v4

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->o()Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v1

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v0

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    return-object p1
.end method
