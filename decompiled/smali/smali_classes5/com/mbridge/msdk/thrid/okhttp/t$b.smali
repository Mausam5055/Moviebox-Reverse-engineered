.class public final Lcom/mbridge/msdk/thrid/okhttp/t$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Lcom/mbridge/msdk/thrid/okhttp/l;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/r;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

.field h:Ljava/net/ProxySelector;

.field i:Lcom/mbridge/msdk/thrid/okhttp/k;

.field j:Ljavax/net/SocketFactory;

.field k:Ljavax/net/ssl/SSLSocketFactory;

.field l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

.field m:Ljavax/net/ssl/HostnameVerifier;

.field n:Lcom/mbridge/msdk/thrid/okhttp/e;

.field o:Lcom/mbridge/msdk/thrid/okhttp/b;

.field p:Lcom/mbridge/msdk/thrid/okhttp/b;

.field q:Lcom/mbridge/msdk/thrid/okhttp/h;

.field r:Lcom/mbridge/msdk/thrid/okhttp/m;

.field s:Z

.field t:Z

.field u:Z

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->f:Ljava/util/List;

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/l;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/l;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/t;->A:Ljava/util/List;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c:Ljava/util/List;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/t;->B:Ljava/util/List;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d:Ljava/util/List;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/n;->NONE:Lcom/mbridge/msdk/thrid/okhttp/n;

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/n;->factory(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/n$c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/proxy/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/proxy/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->h:Ljava/net/ProxySelector;

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/k;->a:Lcom/mbridge/msdk/thrid/okhttp/k;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->j:Ljavax/net/SocketFactory;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/tls/d;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/d;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->m:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/e;->c:Lcom/mbridge/msdk/thrid/okhttp/e;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/b;->a:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/h;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/m;->a:Lcom/mbridge/msdk/thrid/okhttp/m;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->s:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->t:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->u:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->v:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->w:I

    iput v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->x:I

    iput v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->y:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->z:I

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/t;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->f:Ljava/util/List;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->b:Ljava/net/Proxy;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->b:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->c:Ljava/util/List;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->d:Ljava/util/List;

    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->h:Ljava/net/ProxySelector;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->i:Lcom/mbridge/msdk/thrid/okhttp/k;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->j:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->j:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->k:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->k:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/tls/c;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->m:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->m:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->n:Lcom/mbridge/msdk/thrid/okhttp/e;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->o:Lcom/mbridge/msdk/thrid/okhttp/b;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->p:Lcom/mbridge/msdk/thrid/okhttp/b;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->s:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->s:Z

    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->t:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->t:Z

    iget-boolean v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->u:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->u:Z

    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->v:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->v:I

    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->w:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->w:I

    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->x:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->x:I

    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->y:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->y:I

    iget p1, p1, Lcom/mbridge/msdk/thrid/okhttp/t;->z:I

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->z:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->v:I

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/h;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->q:Lcom/mbridge/msdk/thrid/okhttp/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connectionPool == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/l;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a:Lcom/mbridge/msdk/thrid/okhttp/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/m;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->r:Lcom/mbridge/msdk/thrid/okhttp/m;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dns == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/n;->factory(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/n$c;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->g:Lcom/mbridge/msdk/thrid/okhttp/n$c;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/u;",
            ">;)",
            "Lcom/mbridge/msdk/thrid/okhttp/t$b;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/u;->f:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/u;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/u;->d:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->c:Ljava/util/List;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->m:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "hostnameVerifier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->u:Z

    return-object p0
.end method

.method public a()Lcom/mbridge/msdk/thrid/okhttp/t;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/t;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t$b;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->w:I

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->z:I

    return-object p0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->x:I

    return-object p0
.end method

.method public e(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/t$b;->y:I

    return-object p0
.end method
