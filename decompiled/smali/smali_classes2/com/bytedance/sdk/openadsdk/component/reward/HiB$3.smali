.class Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:J

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;ZLcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bytedance/sdk/openadsdk/utils/WMZ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->Sj:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->sP:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->EjP:J

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->HiB:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->Sj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->sP:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 11

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/sef;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sef;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->Sj:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    :goto_0
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->EjP:J

    sub-long/2addr v3, v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;J)V

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->sP:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->sP:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->sP:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Z)V

    invoke-direct {v0, v9, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/HiB$1;)V

    move v10, v1

    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->Sj:Z

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->HiB:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v9

    move-object v2, p1

    move-object v4, p2

    move-object v8, v0

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/sef;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/component/reward/HiB$sP;Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->aa()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->Sj:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$3;->sP:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz p1, :cond_5

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    :cond_5
    return-void
.end method
