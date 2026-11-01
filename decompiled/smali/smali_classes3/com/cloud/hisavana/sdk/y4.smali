.class public Lcom/cloud/hisavana/sdk/y4;
.super Lcom/cloud/hisavana/sdk/l4;


# instance fields
.field private e:Ljava/util/List;

.field private f:Lcom/cloud/hisavana/sdk/q3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/l4;-><init>()V

    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/y4;)Lcom/cloud/hisavana/sdk/q3;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/y4;->f:Lcom/cloud/hisavana/sdk/q3;

    return-object p0
.end method

.method private g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/l4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/y4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/y4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/y4;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/y4;->j(Ljava/util/List;)V

    return-void
.end method

.method private j(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/l4$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/y4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/y4;->f:Lcom/cloud/hisavana/sdk/q3;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "start execute getAdCreativies."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/v4;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/v4;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/y4$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/y4$a;-><init>(Lcom/cloud/hisavana/sdk/y4;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/v4;->c(Lcom/cloud/hisavana/sdk/v4$f;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/y4;->f:Lcom/cloud/hisavana/sdk/q3;

    sget-object v3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/y4;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result p1

    iget v2, p0, Lcom/cloud/hisavana/sdk/l4;->d:I

    invoke-virtual {v0, v1, p1, v5, v2}, Lcom/cloud/hisavana/sdk/v4;->e(Ljava/util/List;III)V

    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/y4;->e:Ljava/util/List;

    return-void
.end method
