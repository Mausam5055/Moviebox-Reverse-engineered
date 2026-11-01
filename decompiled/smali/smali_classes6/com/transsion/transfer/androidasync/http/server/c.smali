.class public abstract Lcom/transsion/transfer/androidasync/http/server/c;
.super Lcom/transsion/transfer/androidasync/t;

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/b;
.implements Lbv/a;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/transsion/transfer/androidasync/http/Headers;

.field i:Lcom/transsion/transfer/androidasync/j;

.field private j:Ljava/util/HashMap;

.field private k:Lbv/a;

.field l:Lcom/transsion/transfer/androidasync/v$a;

.field m:Ljava/lang/String;

.field n:Lcv/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->j:Ljava/util/HashMap;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/c$a;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/server/c$a;-><init>(Lcom/transsion/transfer/androidasync/http/server/c;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->k:Lbv/a;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/c$b;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/server/c$b;-><init>(Lcom/transsion/transfer/androidasync/http/server/c;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->l:Lcom/transsion/transfer/androidasync/v$a;

    return-void
.end method

.method static bridge synthetic O(Lcom/transsion/transfer/androidasync/http/server/c;)Lcom/transsion/transfer/androidasync/http/Headers;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    return-object p0
.end method

.method static bridge synthetic P(Lcom/transsion/transfer/androidasync/http/server/c;)Lbv/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->k:Lbv/a;

    return-object p0
.end method

.method static bridge synthetic Q(Lcom/transsion/transfer/androidasync/http/server/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic R(Lcom/transsion/transfer/androidasync/http/server/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic S(Lcom/transsion/transfer/androidasync/http/server/c;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public D()Lcv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->n:Lcv/a;

    return-object v0
.end method

.method public I()Lbv/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->I()Lbv/d;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected U(Lcom/transsion/transfer/androidasync/http/Headers;)Lcv/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract V()V
.end method

.method protected W()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "not http!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected X(Lcom/transsion/transfer/androidasync/http/Headers;)Lcv/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method Y(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    new-instance p1, Lcom/transsion/transfer/androidasync/v;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->l:Lcom/transsion/transfer/androidasync/v$a;

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    new-instance v0, Lbv/a$a;

    invoke-direct {v0}, Lbv/a$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void
.end method

.method public getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    return-object v0
.end method

.method public getSocket()Lcom/transsion/transfer/androidasync/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    return-void
.end method

.method public t(Lbv/d;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
