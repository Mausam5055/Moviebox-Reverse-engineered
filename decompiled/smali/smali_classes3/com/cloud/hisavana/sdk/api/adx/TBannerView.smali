.class public final Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi;


# instance fields
.field public autoRefreshNum:I

.field public lastestAutoRefreshTs:J

.field private m:Ljava/lang/Integer;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    sget-object v0, Lcom/cloud/hisavana/sdk/R$styleable;->AdBannerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v1, Lcom/cloud/hisavana/sdk/R$styleable;->AdBannerView_placementId:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ssp"

    invoke-virtual {p2, v0, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    return-void
.end method


# virtual methods
.method public getCloseTypeUsedForTrack()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->loadAdFromAutoRefresh(Z)V

    return-void
.end method

.method public loadAdFromAutoRefresh(Z)V
    .locals 9

    const-string v0, ""

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/cloud/hisavana/sdk/p3;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/cloud/hisavana/sdk/p3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    iget-wide v3, v2, Lcom/cloud/hisavana/sdk/p3;->p:J

    iget-object v1, v2, Lcom/cloud/hisavana/sdk/p3;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget v5, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v5, v5

    cmp-long v5, v5, v1

    const-string v6, "ssp"

    if-lez v5, :cond_1

    :try_start_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoRefreshNum > autoCarouselCount, returnautoRefreshNum->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "autoCarouselCount->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2

    cmp-long v1, v3, v7

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    sub-long/2addr v1, v7

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadNextAD auto refresh is so quickly,return interval->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "autoRefreshTs->"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Lcom/cloud/hisavana/sdk/q3$b;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/q3$b;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/q3$b;->i(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->r(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->d:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->l(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->j(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Lb7/b;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->c(Lb7/b;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->g:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->o(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->h:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->v(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->m(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->n:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->s(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/q3$b;->f(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Lb7/a;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->b(Lb7/a;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3$b;->g()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/p3;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/p3;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/p3;->I(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/ViewApi;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/p3;->N(Z)V

    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Z

    return-void
.end method

.method public setCloseTypeUsedForTrack(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->n:Z

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/p3;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    invoke-virtual {v1, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/p3;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/p3;->M(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    :cond_0
    return-void
.end method
