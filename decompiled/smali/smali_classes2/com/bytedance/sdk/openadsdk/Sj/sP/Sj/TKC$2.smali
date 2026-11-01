.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Dq:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->uA:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    move-result-object v5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/core/uvD;

    move-result-object v6

    const/4 v3, 0x5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Lcom/bytedance/sdk/openadsdk/core/uvD;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    instance-of p3, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/sP;

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->EjP()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->getVideoAdListener()Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->HiB(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->vS(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->uA()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Dq:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;-><init>(Landroid/content/Context;)V

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;FF)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Jcg(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq()V

    :cond_3
    return-void
.end method
