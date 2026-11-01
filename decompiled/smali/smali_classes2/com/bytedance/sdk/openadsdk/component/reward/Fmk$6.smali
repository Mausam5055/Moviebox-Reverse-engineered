.class Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/common/Sj$Sj<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

.field final synthetic vS:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;ZLcom/bytedance/sdk/openadsdk/component/reward/Zq;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->Sj:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->vS:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->sP()V

    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->Sj:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->vS:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    if-ne p1, p2, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->vS:Z

    if-nez p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    if-ne p1, p2, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$6;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    const/4 p2, -0x1

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
