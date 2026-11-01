.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;
.super Lcom/bytedance/sdk/openadsdk/core/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public TKC()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public sP()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
