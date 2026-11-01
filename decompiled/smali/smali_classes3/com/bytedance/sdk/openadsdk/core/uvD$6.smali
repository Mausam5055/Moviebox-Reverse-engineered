.class Lcom/bytedance/sdk/openadsdk/core/uvD$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/Wjd$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/ViewGroup;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/uvD;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/uvD;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->sP:Lcom/bytedance/sdk/openadsdk/core/uvD;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->Sj:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->sP:Lcom/bytedance/sdk/openadsdk/core/uvD;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->Sj:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/core/uvD;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public Sj(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->sP:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->sP(Lcom/bytedance/sdk/openadsdk/core/uvD;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->sP:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/uvD;->sP(Lcom/bytedance/sdk/openadsdk/core/uvD;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->sP:Lcom/bytedance/sdk/openadsdk/core/uvD;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->Sj:Landroid/view/ViewGroup;

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/core/uvD;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public Sj(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->sP:Lcom/bytedance/sdk/openadsdk/core/uvD;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->Sj:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/core/uvD;ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$6;->sP:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/uvD;->EjP(Lcom/bytedance/sdk/openadsdk/core/uvD;)V

    return-void
.end method
