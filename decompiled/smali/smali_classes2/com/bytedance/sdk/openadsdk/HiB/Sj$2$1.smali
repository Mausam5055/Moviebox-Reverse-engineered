.class Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/HiB/Sj$2;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/HiB/Sj$2;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->HiB:Lcom/bytedance/sdk/openadsdk/HiB/Sj$2;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Zq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->zR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    const/16 v1, -0x12

    const-string v2, "Blind mode does not allow requesting ads"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGRequest;->getAdString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->EjP(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->vS(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getType()I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getMaxHeight()I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    move-result v3

    if-gt v3, v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    if-gt v1, v2, :cond_4

    if-gez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The banner size invalid width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->sP:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x13

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;->onError(ILjava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    const/4 v1, -0x4

    const-string v2, "adslot is null"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;->onError(ILjava/lang/String;)V

    return-void

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    const/16 v4, 0x1388

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/common/vS;I)V

    return-void
.end method
