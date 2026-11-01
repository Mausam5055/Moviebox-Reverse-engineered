.class public final Lcom/cloud/hisavana/sdk/x3;
.super Lcom/cloud/hisavana/sdk/G;


# instance fields
.field private final i:Ljava/lang/String;

.field private volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private k:Lcom/cloud/hisavana/sdk/e2;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 1

    const-string v0, "adFetchInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/G;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    const-string p1, "Rewarded"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/x3;->i:Ljava/lang/String;

    return-void
.end method

.method private final K()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/e2;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/e2;-><init>(Lcom/cloud/hisavana/sdk/x3;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/x3;->k:Lcom/cloud/hisavana/sdk/e2;

    return-void
.end method


# virtual methods
.method public final F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public final I()V
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

.method public final J()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->A()V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/x3;->K()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x3;->k:Lcom/cloud/hisavana/sdk/e2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e2;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/x3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x3;->i:Ljava/lang/String;

    const-string v2, "ad not condition to use"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x3;->i:Ljava/lang/String;

    const-string v2, "adBean = null"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "athenaTrackBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/x3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->d(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/G;->m()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x3;->k:Lcom/cloud/hisavana/sdk/e2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/e2;->b()V

    :cond_0
    return-void
.end method
