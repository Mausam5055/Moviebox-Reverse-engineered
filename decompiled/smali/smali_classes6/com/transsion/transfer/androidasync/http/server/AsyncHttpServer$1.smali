.class Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->k(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;Ljava/lang/Exception;)V

    return-void
.end method

.method public q(Lcom/transsion/transfer/androidasync/i;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;Lcom/transsion/transfer/androidasync/j;)V

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/c;->Y(Lcom/transsion/transfer/androidasync/j;)V

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->resume()V

    return-void
.end method
