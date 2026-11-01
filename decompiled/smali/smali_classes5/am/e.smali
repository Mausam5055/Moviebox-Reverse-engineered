.class public final Lam/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lam/e$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/transsion/http/d/h;

.field private final g:Z

.field private final h:Ljava/util/Map;

.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/transsion/http/d/a;

.field private final l:Z

.field private final m:Ljavax/net/ssl/SSLSocketFactory;

.field private final n:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Lam/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lam/e$a;->a(Lam/e$a;)I

    move-result v0

    iput v0, p0, Lam/e;->a:I

    invoke-static {p1}, Lam/e$a;->k(Lam/e$a;)I

    move-result v0

    iput v0, p0, Lam/e;->b:I

    invoke-static {p1}, Lam/e$a;->u(Lam/e$a;)Z

    invoke-static {p1}, Lam/e$a;->v(Lam/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lam/e$a;->w(Lam/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/e;->d:Ljava/lang/String;

    invoke-static {p1}, Lam/e$a;->x(Lam/e$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lam/e$a;->x(Lam/e$a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lam/e;->e:Ljava/lang/Object;

    invoke-static {p1}, Lam/e$a;->y(Lam/e$a;)Lcom/transsion/http/d/h;

    move-result-object v0

    iput-object v0, p0, Lam/e;->f:Lcom/transsion/http/d/h;

    invoke-static {p1}, Lam/e$a;->z(Lam/e$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lam/e;->h:Ljava/util/Map;

    invoke-static {p1}, Lam/e$a;->A(Lam/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lam/e;->g:Z

    invoke-static {p1}, Lam/e$a;->B(Lam/e$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/e;->i:Landroid/content/Context;

    invoke-static {p1}, Lam/e$a;->p(Lam/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/e;->j:Ljava/lang/String;

    invoke-static {p1}, Lam/e$a;->q(Lam/e$a;)Lcom/transsion/http/d/a;

    move-result-object v0

    iput-object v0, p0, Lam/e;->k:Lcom/transsion/http/d/a;

    invoke-static {p1}, Lam/e$a;->r(Lam/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lam/e;->l:Z

    invoke-static {p1}, Lam/e$a;->s(Lam/e$a;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lam/e;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1}, Lam/e$a;->t(Lam/e$a;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    iput-object p1, p0, Lam/e;->n:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lam/e;->a:I

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lam/e;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lam/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/transsion/http/d/a;
    .locals 1

    iget-object v0, p0, Lam/e;->k:Lcom/transsion/http/d/a;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lam/e;->i:Landroid/content/Context;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lam/e;->h:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lam/e;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public h()Lcom/transsion/http/d/h;
    .locals 1

    iget-object v0, p0, Lam/e;->f:Lcom/transsion/http/d/h;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lam/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lam/e;->b:I

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lam/e;->l:Z

    return v0
.end method

.method public l()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lam/e;->m:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lam/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lam/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lam/e;->g:Z

    return v0
.end method
