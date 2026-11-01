.class Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;
.super Lcom/transsion/transfer/androidasync/http/server/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->w(Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final A:Lbv/i;

.field final synthetic B:Lcom/transsion/transfer/androidasync/j;

.field final synthetic C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

.field q:Lcom/transsion/transfer/androidasync/http/server/n$a;

.field r:Lcom/transsion/transfer/androidasync/http/server/q;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Z

.field v:Z

.field w:Lcom/transsion/transfer/androidasync/http/server/k;

.field x:Z

.field y:Z

.field final z:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/n$a;-><init>(Lcom/transsion/transfer/androidasync/http/server/n;)V

    iput-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->q:Lcom/transsion/transfer/androidasync/http/server/n$a;

    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$1;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$1;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->z:Ljava/lang/Runnable;

    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$a;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$a;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->A:Lbv/i;

    return-void
.end method

.method static bridge synthetic Z(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->b0()V

    return-void
.end method

.method static synthetic a0(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void
.end method

.method private b0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->n(Lcom/transsion/transfer/androidasync/http/server/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->q:Lcom/transsion/transfer/androidasync/http/server/n$a;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->m(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->w(Lcom/transsion/transfer/androidasync/j;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected U(Lcom/transsion/transfer/androidasync/http/Headers;)Lcv/a;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->T()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->s:Ljava/lang/String;

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->t:Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v1, v1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/server/n$d;->c:Ljava/util/regex/Matcher;

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/n$a;->o:Ljava/util/regex/Matcher;

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/server/n$d;->d:Lcom/transsion/transfer/androidasync/http/server/q;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->r:Lcom/transsion/transfer/androidasync/http/server/q;

    return-object v0
.end method

.method protected V()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->x:Z

    if-nez v1, :cond_0

    const-string v1, "Expect"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->pause()V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;

    invoke-direct {v2, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLbv/a;)V

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    invoke-direct {v0, p0, v1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/server/c;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v1, v1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-virtual {v1, p0, v0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->q(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->y:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->r:Lcom/transsion/transfer/androidasync/http/server/q;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/k;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/server/k;->d()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->D()Lcv/a;

    move-result-object v0

    invoke-interface {v0}, Lcv/a;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->v:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->c0()V

    :cond_4
    return-void
.end method

.method protected X(Lcom/transsion/transfer/androidasync/http/Headers;)Lcv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->s(Lcom/transsion/transfer/androidasync/http/Headers;)Lcv/a;

    move-result-object p1

    return-object p1
.end method

.method c0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->r:Lcom/transsion/transfer/androidasync/http/server/q;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->p(Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->n(Lcom/transsion/transfer/androidasync/http/server/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->v:Z

    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/c;->g(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    new-instance v1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$d;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$d;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->b0()V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->D()Lcv/a;

    move-result-object p1

    invoke-interface {p1}, Lcv/a;->K()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->y:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->c0()V

    :cond_2
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->t:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->s:Ljava/lang/String;

    const-string v1, "\\?"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Multimap;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Multimap;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Multimap;->parseQuery(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object v0

    return-object v0
.end method
