.class public Lwl/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lzl/a;

.field private b:Lxl/h;

.field private final c:Lam/e;


# direct methods
.method public constructor <init>(Lam/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lam/c;->c()Lam/e;

    move-result-object p1

    iput-object p1, p0, Lwl/b;->c:Lam/e;

    new-instance p1, Lzl/a;

    invoke-direct {p1}, Lzl/a;-><init>()V

    iput-object p1, p0, Lwl/b;->a:Lzl/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/http/impl/r;)V
    .locals 1

    iget-object v0, p0, Lwl/b;->a:Lzl/a;

    invoke-virtual {v0, p0, p1}, Lzl/a;->a(Lwl/b;Lcom/transsion/http/impl/r;)V

    return-void
.end method

.method public b()Lxl/h;
    .locals 5

    iget-object v0, p0, Lwl/b;->c:Lam/e;

    invoke-virtual {v0}, Lam/e;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lxl/c;

    iget-object v1, p0, Lwl/b;->c:Lam/e;

    invoke-virtual {v1}, Lam/e;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxl/c;-><init>(Landroid/content/Context;)V

    sget v1, Lwl/a;->b:I

    if-gtz v1, :cond_0

    const-wide/32 v1, 0x6400000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x100000

    mul-int/2addr v1, v2

    int-to-long v1, v1

    :goto_0
    sget v3, Lwl/a;->a:I

    if-gtz v3, :cond_1

    const-wide/32 v3, 0x337f9800

    goto :goto_1

    :cond_1
    const v4, 0x36ee80

    mul-int/2addr v3, v4

    int-to-long v3, v3

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lxl/c;->a(JJ)Lxl/h;

    move-result-object v0

    iput-object v0, p0, Lwl/b;->b:Lxl/h;

    :cond_2
    iget-object v0, p0, Lwl/b;->b:Lxl/h;

    return-object v0
.end method

.method public c()Lam/e;
    .locals 1

    iget-object v0, p0, Lwl/b;->c:Lam/e;

    return-object v0
.end method

.method public d()Lam/f;
    .locals 2

    new-instance v0, Lam/f;

    iget-object v1, p0, Lwl/b;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/f;-><init>(Lam/e;)V

    return-object v0
.end method
