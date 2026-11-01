.class Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;
.super Lv5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/component/reward/sef;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/reward/sef;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;ZLcom/bytedance/sdk/openadsdk/component/reward/sef;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->sP:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/sef;

    invoke-direct {p0}, Lv5/b;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->sP:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/sef;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->sP:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
