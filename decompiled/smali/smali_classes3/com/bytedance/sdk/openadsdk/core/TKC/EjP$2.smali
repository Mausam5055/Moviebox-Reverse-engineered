.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->sP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/ViewGroup;I)Z
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->sP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->setClosedListenerKey(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setVastVideoHelper(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->sP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->setClosedListenerKey(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
