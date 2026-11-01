.class Lcom/bytedance/sdk/openadsdk/component/uA/HiB$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/uA/HiB;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/uA/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/uA/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;->getTopDislike()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Sj(II)V
    .locals 0

    return-void
.end method

.method public Sj(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;->Sj(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public sP()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    return-object v0
.end method
