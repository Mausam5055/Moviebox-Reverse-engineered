.class public Lcom/transsion/transfer/androidasync/http/v;
.super Lcom/transsion/transfer/androidasync/http/a0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/a0;-><init>()V

    return-void
.end method

.method static i(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc7

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xcc

    if-eq p0, v0, :cond_2

    const/16 v0, 0x130

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public c(Lcom/transsion/transfer/androidasync/http/g$f;)V
    .locals 2

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Protocol;->get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_0:Lcom/transsion/transfer/androidasync/http/Protocol;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/http/g$i;->H()Lcom/transsion/transfer/androidasync/s;

    move-result-object v0

    instance-of v0, v0, Lev/a;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/g$i;->H()Lcom/transsion/transfer/androidasync/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/s;->d()V

    :cond_1
    return-void
.end method

.method public f(Lcom/transsion/transfer/androidasync/http/g$c;)Z
    .locals 8

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Protocol;->get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_0:Lcom/transsion/transfer/androidasync/http/Protocol;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/http/a0;->f(Lcom/transsion/transfer/androidasync/http/g$c;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->e()Lcv/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcv/a;->length()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v2

    invoke-interface {v1}, Lcv/a;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v2, v4, v3}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    iget-object v3, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "close"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    iget-object v3, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v2

    const-string v3, "Transfer-Encoding"

    const-string v4, "Chunked"

    invoke-virtual {v2, v3, v4}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    new-instance v3, Lev/a;

    iget-object v4, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-direct {v3, v4}, Lev/a;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->n()Lcom/transsion/transfer/androidasync/http/y;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcv/a;->length()I

    move-result v5

    if-ltz v5, :cond_4

    invoke-interface {v1}, Lcv/a;->length()I

    move-result v1

    array-length v5, v3

    add-int/2addr v1, v5

    const/16 v5, 0x400

    if-ge v1, v5, :cond_4

    new-instance v1, Lcom/transsion/transfer/androidasync/n;

    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v5}, Lcom/transsion/transfer/androidasync/http/g$i;->H()Lcom/transsion/transfer/androidasync/s;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/transsion/transfer/androidasync/n;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    invoke-virtual {v1, v4}, Lcom/transsion/transfer/androidasync/n;->g(Z)V

    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v5, v1}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    move-object v5, v1

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    const/4 v5, 0x0

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->h:Lbv/a;

    new-instance v2, Lcom/transsion/transfer/androidasync/http/v$a;

    invoke-direct {v2, p0, v0, v5}, Lcom/transsion/transfer/androidasync/http/v$a;-><init>(Lcom/transsion/transfer/androidasync/http/v;Lbv/a;Lcom/transsion/transfer/androidasync/n;)V

    invoke-static {v1, v3, v2}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLbv/a;)V

    new-instance v0, Lcom/transsion/transfer/androidasync/http/v$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/http/v$b;-><init>(Lcom/transsion/transfer/androidasync/http/v;Lcom/transsion/transfer/androidasync/http/g$c;)V

    new-instance v1, Lcom/transsion/transfer/androidasync/v;

    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    return v4
.end method
