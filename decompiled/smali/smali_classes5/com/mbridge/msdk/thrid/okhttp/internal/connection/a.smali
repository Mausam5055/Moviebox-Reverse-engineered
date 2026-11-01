.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/connection/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/r;


# instance fields
.field public final a:Lcom/mbridge/msdk/thrid/okhttp/t;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/a;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/r$a;)Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->d()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->i()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/w;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/a;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v2, v4, p1, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/r$a;Z)Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    move-result-object p1

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;->a(Lcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    return-object p1
.end method
