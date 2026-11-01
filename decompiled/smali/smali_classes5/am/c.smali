.class public abstract Lam/c;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/Object;

.field protected final c:Lcom/transsion/http/d/h;

.field protected final d:Z

.field protected final e:Ljava/util/Map;

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Ljavax/net/ssl/SSLSocketFactory;

.field protected j:Ljavax/net/ssl/HostnameVerifier;

.field protected k:Lam/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/d/h;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lam/e$a;

    invoke-direct {v0}, Lam/e$a;-><init>()V

    iput-object v0, p0, Lam/c;->k:Lam/e$a;

    iput-object p1, p0, Lam/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lam/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lam/c;->c:Lcom/transsion/http/d/h;

    iput-object p4, p0, Lam/c;->e:Ljava/util/Map;

    iput-boolean p5, p0, Lam/c;->d:Z

    iput p6, p0, Lam/c;->f:I

    iput p7, p0, Lam/c;->g:I

    iput-boolean p8, p0, Lam/c;->h:Z

    iput-object p9, p0, Lam/c;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p10, p0, Lam/c;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, p1}, Lam/e$a;->n(Ljava/lang/String;)Lam/e$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lam/e$a;->e(Ljava/lang/Object;)Lam/e$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lam/e$a;->d(Lcom/transsion/http/d/h;)Lam/e$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lam/e$a;->f(Ljava/util/Map;)Lam/e$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lam/e$a;->o(Z)Lam/e$a;

    move-result-object p1

    iget p2, p0, Lam/c;->f:I

    invoke-virtual {p1, p2}, Lam/e$a;->b(I)Lam/e$a;

    move-result-object p1

    iget p2, p0, Lam/c;->g:I

    invoke-virtual {p1, p2}, Lam/e$a;->l(I)Lam/e$a;

    move-result-object p1

    iget-boolean p2, p0, Lam/c;->h:Z

    invoke-virtual {p1, p2}, Lam/e$a;->i(Z)Lam/e$a;

    move-result-object p1

    iget-object p2, p0, Lam/c;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, p2}, Lam/e$a;->h(Ljavax/net/ssl/SSLSocketFactory;)Lam/e$a;

    move-result-object p1

    iget-object p2, p0, Lam/c;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, p2}, Lam/e$a;->g(Ljavax/net/ssl/HostnameVerifier;)Lam/e$a;

    return-void
.end method


# virtual methods
.method public a()Lwl/b;
    .locals 1

    new-instance v0, Lwl/b;

    invoke-direct {v0, p0}, Lwl/b;-><init>(Lam/c;)V

    return-object v0
.end method

.method protected abstract b()Lam/e;
.end method

.method public c()Lam/e;
    .locals 1

    invoke-virtual {p0}, Lam/c;->b()Lam/e;

    move-result-object v0

    return-object v0
.end method
