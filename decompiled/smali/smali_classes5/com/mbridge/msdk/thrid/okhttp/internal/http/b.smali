.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/http/b$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/r$a;)Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->h()Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->i()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->f()Lcom/mbridge/msdk/thrid/okhttp/g;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->d()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g()Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e()Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/thrid/okhttp/n;->requestHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    invoke-interface {v0, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g()Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e()Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/mbridge/msdk/thrid/okhttp/n;->requestHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/w;)V

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/w;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/f;->a(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/w;->a()Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    invoke-virtual {v3, v6}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->b()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g()Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e()Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/thrid/okhttp/n;->responseHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->a(Z)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g()Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e()Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/n;->requestBodyStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/w;->a()Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/x;->a()J

    move-result-wide v8

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b$a;

    invoke-interface {v0, v3, v8, v9}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->a(Lcom/mbridge/msdk/thrid/okhttp/w;J)Lcom/mbridge/msdk/thrid/okio/r;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b$a;-><init>(Lcom/mbridge/msdk/thrid/okio/r;)V

    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okio/l;->a(Lcom/mbridge/msdk/thrid/okio/r;)Lcom/mbridge/msdk/thrid/okio/d;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/w;->a()Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mbridge/msdk/thrid/okhttp/x;->a(Lcom/mbridge/msdk/thrid/okio/d;)V

    invoke-interface {v6}, Lcom/mbridge/msdk/thrid/okio/r;->close()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g()Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e()Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object v8

    iget-wide v9, v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b$a;->b:J

    invoke-virtual {v6, v8, v9, v10}, Lcom/mbridge/msdk/thrid/okhttp/n;->requestBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/d;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->f()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e()V

    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->a()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g()Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e()Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/thrid/okhttp/n;->responseHeadersStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->a(Z)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v7

    :cond_3
    invoke-virtual {v7, v3}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->b()Lcom/mbridge/msdk/thrid/okhttp/o;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/o;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->a(Z)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->b()Lcom/mbridge/msdk/thrid/okhttp/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/o;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    move-result v7

    :cond_4
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->g()Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->e()Lcom/mbridge/msdk/thrid/okhttp/d;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lcom/mbridge/msdk/thrid/okhttp/n;->responseHeadersEnd(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/y;)V

    iget-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b;->a:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/y;->o()Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->c:Lcom/mbridge/msdk/thrid/okhttp/z;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/z;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/y;->o()Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-interface {v0, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/z;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->r()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/thrid/okhttp/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/z;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    :cond_9
    return-object p1

    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/z;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
