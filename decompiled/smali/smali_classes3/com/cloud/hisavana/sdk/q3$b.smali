.class public Lcom/cloud/hisavana/sdk/q3$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z

.field private g:I

.field private h:Lb7/b;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:D

.field private n:Z

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/q3$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->e:I

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/q3$b;->j:Z

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/q3$b;->k:Z

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/q3$b;->l:Z

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/q3$b;->n:Z

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/q3$b;->t:Z

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/q3$b;->p:Ljava/lang/String;

    const v1, 0xafc8

    iput v1, p0, Lcom/cloud/hisavana/sdk/q3$b;->q:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->r:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/util/m0;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->r:Ljava/lang/String;

    :goto_0
    iput v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->o:I

    new-instance p1, Lb7/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lb7/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->h:Lb7/b;

    return-void
.end method

.method static synthetic A(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->t:Z

    return p0
.end method

.method static synthetic B(Lcom/cloud/hisavana/sdk/q3$b;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->c:I

    return p0
.end method

.method static synthetic C(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->d:Z

    return p0
.end method

.method static synthetic D(Lcom/cloud/hisavana/sdk/q3$b;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->e:I

    return p0
.end method

.method static synthetic E(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->f:Z

    return p0
.end method

.method static synthetic F(Lcom/cloud/hisavana/sdk/q3$b;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->g:I

    return p0
.end method

.method static synthetic G(Lcom/cloud/hisavana/sdk/q3$b;)Lb7/b;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->h:Lb7/b;

    return-object p0
.end method

.method static synthetic H(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->i:Z

    return p0
.end method

.method static synthetic I(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->j:Z

    return p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/q3$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->b:Z

    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->k:Z

    return p0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->l:Z

    return p0
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/q3$b;)D
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->m:D

    return-wide v0
.end method

.method static synthetic t(Lcom/cloud/hisavana/sdk/q3$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->n:Z

    return p0
.end method

.method static synthetic u(Lcom/cloud/hisavana/sdk/q3$b;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->o:I

    return p0
.end method

.method static synthetic w(Lcom/cloud/hisavana/sdk/q3$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/q3$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/cloud/hisavana/sdk/q3$b;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->q:I

    return p0
.end method

.method static synthetic z(Lcom/cloud/hisavana/sdk/q3$b;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q3$b;->s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->e:I

    return-object p0
.end method

.method public b(Lb7/a;)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->t:Z

    const-string v1, ""

    const-string v2, "hisa-"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lb7/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->p:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lb7/a;->e()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lb7/a;->e()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->q:I

    :cond_2
    invoke-virtual {p1}, Lb7/a;->d()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Lb7/a;->d()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->o:I

    :cond_3
    invoke-virtual {p1}, Lb7/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->n:Z

    invoke-virtual {p1}, Lb7/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/q3$b;->t:Z

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->r:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lb7/a;->b()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lb7/a;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/q3$b;->m:D

    :cond_5
    return-object p0
.end method

.method public c(Lb7/b;)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->h:Lb7/b;

    :cond_0
    return-object p0
.end method

.method public d(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->t:Z

    return-object p0
.end method

.method public g()Lcom/cloud/hisavana/sdk/q3;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/q3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/q3;-><init>(Lcom/cloud/hisavana/sdk/q3$b;Lcom/cloud/hisavana/sdk/q3$a;)V

    return-object v0
.end method

.method public i(I)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->g:I

    return-object p0
.end method

.method public j(Z)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->d:Z

    return-object p0
.end method

.method public l(I)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->c:I

    return-object p0
.end method

.method public m(Z)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->l:Z

    return-object p0
.end method

.method public o(Z)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->f:Z

    return-object p0
.end method

.method public r(Z)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->b:Z

    return-object p0
.end method

.method public s(Z)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->k:Z

    return-object p0
.end method

.method public v(Z)Lcom/cloud/hisavana/sdk/q3$b;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3$b;->j:Z

    return-object p0
.end method
