.class Lcom/transsion/transfer/androidasync/AsyncServer$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;->n(Ljava/net/InetSocketAddress;Lbv/b;)Lcom/transsion/transfer/androidasync/future/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbv/b;

.field final synthetic b:Lcom/transsion/transfer/androidasync/future/w;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lcom/transsion/transfer/androidasync/AsyncServer;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lbv/b;Lcom/transsion/transfer/androidasync/future/w;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->a:Lbv/b;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->b:Lcom/transsion/transfer/androidasync/future/w;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer$a;->b(Ljava/lang/Exception;Ljava/net/InetAddress;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;Ljava/net/InetAddress;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->a:Lbv/b;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->b:Lcom/transsion/transfer/androidasync/future/w;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->b:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {v1, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$a;->a:Lbv/b;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->l(Ljava/net/InetSocketAddress;Lbv/b;)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object p2

    check-cast p2, Lcom/transsion/transfer/androidasync/AsyncServer$b;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/future/w;->E(Lcom/transsion/transfer/androidasync/future/f;)Lcom/transsion/transfer/androidasync/future/f;

    return-void
.end method
