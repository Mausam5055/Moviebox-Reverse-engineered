.class public final Lam/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lam/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Object;

.field private h:Lcom/transsion/http/d/h;

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Lcom/transsion/http/d/a;

.field private m:Ljava/util/Map;

.field private n:Z

.field private o:Ljavax/net/ssl/SSLSocketFactory;

.field private p:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbm/a;->a:Lbm/c;

    iget-boolean v1, p0, Lam/e$a;->a:Z

    invoke-interface {v0, v1}, Lbm/c;->a(Z)V

    return-void
.end method

.method static synthetic A(Lam/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lam/e$a;->i:Z

    return p0
.end method

.method static synthetic B(Lam/e$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lam/e$a;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lam/e$a;)I
    .locals 0

    iget p0, p0, Lam/e$a;->b:I

    return p0
.end method

.method static synthetic k(Lam/e$a;)I
    .locals 0

    iget p0, p0, Lam/e$a;->c:I

    return p0
.end method

.method static synthetic p(Lam/e$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lam/e$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lam/e$a;)Lcom/transsion/http/d/a;
    .locals 0

    iget-object p0, p0, Lam/e$a;->l:Lcom/transsion/http/d/a;

    return-object p0
.end method

.method static synthetic r(Lam/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lam/e$a;->n:Z

    return p0
.end method

.method static synthetic s(Lam/e$a;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lam/e$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic t(Lam/e$a;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lam/e$a;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method static synthetic u(Lam/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lam/e$a;->d:Z

    return p0
.end method

.method static synthetic v(Lam/e$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lam/e$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lam/e$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lam/e$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lam/e$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lam/e$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic y(Lam/e$a;)Lcom/transsion/http/d/h;
    .locals 0

    iget-object p0, p0, Lam/e$a;->h:Lcom/transsion/http/d/h;

    return-object p0
.end method

.method static synthetic z(Lam/e$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lam/e$a;->m:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b(I)Lam/e$a;
    .locals 0

    iput p1, p0, Lam/e$a;->b:I

    return-object p0
.end method

.method public c(Landroid/content/Context;)Lam/e$a;
    .locals 0

    iput-object p1, p0, Lam/e$a;->j:Landroid/content/Context;

    return-object p0
.end method

.method public d(Lcom/transsion/http/d/h;)Lam/e$a;
    .locals 0

    iput-object p1, p0, Lam/e$a;->h:Lcom/transsion/http/d/h;

    return-object p0
.end method

.method public e(Ljava/lang/Object;)Lam/e$a;
    .locals 0

    iput-object p1, p0, Lam/e$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public f(Ljava/util/Map;)Lam/e$a;
    .locals 0

    iput-object p1, p0, Lam/e$a;->m:Ljava/util/Map;

    return-object p0
.end method

.method public g(Ljavax/net/ssl/HostnameVerifier;)Lam/e$a;
    .locals 0

    iput-object p1, p0, Lam/e$a;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public h(Ljavax/net/ssl/SSLSocketFactory;)Lam/e$a;
    .locals 0

    iput-object p1, p0, Lam/e$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public i(Z)Lam/e$a;
    .locals 0

    iput-boolean p1, p0, Lam/e$a;->d:Z

    return-object p0
.end method

.method public j()Lam/e;
    .locals 2

    iget-object v0, p0, Lam/e$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/e$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    new-instance v0, Lam/b;

    invoke-direct {v0}, Lam/b;-><init>()V

    invoke-virtual {v0}, Lam/b;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lam/e$a;->o:Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    iget-object v0, p0, Lam/e$a;->p:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    new-instance v0, Lam/a;

    invoke-direct {v0}, Lam/a;-><init>()V

    invoke-virtual {v0}, Lam/a;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lam/e$a;->p:Ljavax/net/ssl/HostnameVerifier;

    :cond_1
    new-instance v0, Lam/e;

    invoke-direct {v0, p0}, Lam/e;-><init>(Lam/e$a;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(I)Lam/e$a;
    .locals 0

    iput p1, p0, Lam/e$a;->c:I

    return-object p0
.end method

.method public m(Z)Lam/e$a;
    .locals 0

    iput-boolean p1, p0, Lam/e$a;->i:Z

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lam/e$a;
    .locals 0

    iput-object p1, p0, Lam/e$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public o(Z)Lam/e$a;
    .locals 1

    iput-boolean p1, p0, Lam/e$a;->a:Z

    sget-object v0, Lbm/a;->a:Lbm/c;

    invoke-interface {v0, p1}, Lbm/c;->a(Z)V

    return-object p0
.end method
