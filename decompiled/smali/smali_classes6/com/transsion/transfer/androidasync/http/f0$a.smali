.class Lcom/transsion/transfer/androidasync/http/f0$a;
.super Lcom/transsion/transfer/androidasync/http/HybiParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/f0;->N(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic y:Lcom/transsion/transfer/androidasync/http/f0;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/f0;Lcom/transsion/transfer/androidasync/p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;-><init>(Lcom/transsion/transfer/androidasync/p;)V

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/f0;->k(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$a;

    return-void
.end method

.method protected B(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->m(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->m(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected H(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/f0;->f:Lbv/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected J([B)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/n;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method

.method protected x(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/f0;->q(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    return-void
.end method

.method protected y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->r(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->r(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected z([B)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>([B)V

    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/f0;->u(Lcom/transsion/transfer/androidasync/http/f0;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method
