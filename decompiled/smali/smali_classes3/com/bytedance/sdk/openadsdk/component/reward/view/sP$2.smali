.class Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->Jcg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/ViewGroup;I)Z
    .locals 2

    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    invoke-virtual {v0, p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
