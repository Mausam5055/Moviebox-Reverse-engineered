.class public Lcom/cloud/hisavana/sdk/s3;
.super Lcom/cloud/hisavana/sdk/G;


# instance fields
.field private i:Lcom/cloud/hisavana/sdk/p4;

.field private volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/G;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method private L()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/p4;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/p4;-><init>(Lcom/cloud/hisavana/sdk/s3;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/s3;->i:Lcom/cloud/hisavana/sdk/p4;

    return-void
.end method


# virtual methods
.method F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V

    :cond_0
    return-void
.end method

.method G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    :cond_0
    return-void
.end method

.method public H(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/s3;->L()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s3;->i:Lcom/cloud/hisavana/sdk/p4;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/p4;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method I()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method J()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method K()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->f()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->k(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    :cond_0
    return-void
.end method

.method public M()V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/s3;->L()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const-string v1, "ssp"

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/s3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "adBean = null"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s3;->i:Lcom/cloud/hisavana/sdk/p4;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p4;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/s3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "ad not condition to use"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/s3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->d(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/G;->m()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s3;->i:Lcom/cloud/hisavana/sdk/p4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p4;->d()V

    :cond_0
    return-void
.end method
