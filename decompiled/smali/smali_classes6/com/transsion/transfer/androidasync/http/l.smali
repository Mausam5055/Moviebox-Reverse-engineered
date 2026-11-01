.class abstract Lcom/transsion/transfer/androidasync/http/l;
.super Lcom/transsion/transfer/androidasync/t;

# interfaces
.implements Lcom/transsion/transfer/androidasync/p;
.implements Lcom/transsion/transfer/androidasync/http/k;
.implements Lcom/transsion/transfer/androidasync/http/g$i;


# instance fields
.field private g:Lbv/a;

.field private h:Lcom/transsion/transfer/androidasync/http/j;

.field private i:Lcom/transsion/transfer/androidasync/j;

.field protected j:Lcom/transsion/transfer/androidasync/http/Headers;

.field k:Z

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field private o:Z

.field p:Lcom/transsion/transfer/androidasync/s;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/http/l$b;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/l$b;-><init>(Lcom/transsion/transfer/androidasync/http/l;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->g:Lbv/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/l;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/l;->o:Z

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->h:Lcom/transsion/transfer/androidasync/http/j;

    return-void
.end method

.method static bridge synthetic O(Lcom/transsion/transfer/androidasync/http/l;)Lcom/transsion/transfer/androidasync/j;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    return-object p0
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    new-instance v1, Lcom/transsion/transfer/androidasync/http/l$c;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/http/l$c;-><init>(Lcom/transsion/transfer/androidasync/http/l;)V

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    return-void
.end method


# virtual methods
.method public H()Lcom/transsion/transfer/androidasync/s;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->p:Lcom/transsion/transfer/androidasync/s;

    return-object v0
.end method

.method protected M(Ljava/lang/Exception;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/l;->T()V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/l;->k:Z

    return-void
.end method

.method protected P()V
    .locals 0

    return-void
.end method

.method protected Q()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->h:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->e()Lcv/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/l;->h:Lcom/transsion/transfer/androidasync/http/j;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/l;->p:Lcom/transsion/transfer/androidasync/s;

    new-instance v3, Lcom/transsion/transfer/androidasync/http/l$a;

    invoke-direct {v3, p0}, Lcom/transsion/transfer/androidasync/http/l$a;-><init>(Lcom/transsion/transfer/androidasync/http/l;)V

    invoke-interface {v0, v1, v2, v3}, Lcv/a;->C(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/l;->R(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected abstract R(Ljava/lang/Exception;)V
.end method

.method S(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->g:Lbv/a;

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    return-void
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/j;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/l;->l:I

    return v0
.end method

.method public c(I)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/l;->l:I

    return-object p0
.end method

.method public close()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/transfer/androidasync/t;->close()V

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/l;->T()V

    return-void
.end method

.method public e()Lcom/transsion/transfer/androidasync/http/Headers;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    return-object v0
.end method

.method public f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->p:Lcom/transsion/transfer/androidasync/s;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->m:Ljava/lang/String;

    return-object p0
.end method

.method public m(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    return-object p0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public socket()Lcom/transsion/transfer/androidasync/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/l;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/transfer/androidasync/http/l;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/l;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->n:Ljava/lang/String;

    return-object p0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "charset"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y(Lcom/transsion/transfer/androidasync/http/Headers;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    return-object p0
.end method
