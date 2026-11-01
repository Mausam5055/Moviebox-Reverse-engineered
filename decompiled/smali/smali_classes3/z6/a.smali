.class public abstract Lz6/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/cloud/hisavana/sdk/G;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:I

.field protected e:Z

.field protected f:Lcom/cloud/hisavana/sdk/api/listener/d;

.field protected g:Z

.field protected h:Z

.field protected i:Lb7/a;

.field protected j:Lb7/b;

.field private k:J

.field protected l:Landroidx/collection/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz6/a;->k:J

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Lz6/a;->l:Landroidx/collection/b;

    iput-object p1, p0, Lz6/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v1, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->q(Lcom/cloud/hisavana/sdk/G;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lz6/a;->b:Ljava/lang/String;

    iget-object p1, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected b()Z
    .locals 9

    sget-object v0, La7/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ssp"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v3, "AppId is empty, please check your config."

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz6/a;->f:Lcom/cloud/hisavana/sdk/api/listener/d;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INVALID_APP_ID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v3, "You should init first"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->n()J

    move-result-wide v5

    iget-wide v7, p0, Lz6/a;->k:J

    sub-long v7, v3, v7

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    iput-wide v3, p0, Lz6/a;->k:J

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad request rate limit exceeded\uff0ccurrent interval is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lz6/a;->f:Lcom/cloud/hisavana/sdk/api/listener/d;

    :try_start_0
    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ssp"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lz6/a;->l:Landroidx/collection/b;

    invoke-virtual {v2, v0}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "NonViewApi mLoadedAd destroy"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->m()V

    :cond_1
    iget-object v0, p0, Lz6/a;->l:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lz6/a;->l:Landroidx/collection/b;

    invoke-virtual {v2}, Landroidx/collection/b;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lz6/a;->l:Landroidx/collection/b;

    invoke-virtual {v2, v0}, Landroidx/collection/b;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/G;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baseAd destroy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/G;->m()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lz6/a;->l:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-nez v0, :cond_0

    const/16 v0, 0x45b

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->q()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public f()D
    .locals 2

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->t()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->u()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Lb7/a;
    .locals 1

    iget-object v0, p0, Lz6/a;->i:Lb7/a;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->B()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lb7/b;

    invoke-direct {v0, p1, p2, p3}, Lb7/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lz6/a;->j:Lb7/b;

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lz6/a;->g:Z

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lz6/a;->c:Z

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lz6/a;->d:I

    return-void
.end method

.method public p(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    iput-object p1, p0, Lz6/a;->f:Lcom/cloud/hisavana/sdk/api/listener/d;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz6/a;->b:Ljava/lang/String;

    return-void
.end method

.method public r(Lb7/a;)V
    .locals 0

    iput-object p1, p0, Lz6/a;->i:Lb7/a;

    return-void
.end method
