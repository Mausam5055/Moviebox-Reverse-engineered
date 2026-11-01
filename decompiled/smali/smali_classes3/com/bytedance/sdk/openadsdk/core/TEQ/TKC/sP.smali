.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;

.field private Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private sP:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;->sP()V

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->HiB()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj()Lcom/bytedance/sdk/openadsdk/aa/sP;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj()Lcom/bytedance/sdk/openadsdk/aa/sP;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/aa/sP;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP$Sj;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;)V

    :cond_0
    return-void
.end method

.method public TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;->TKC()V

    :cond_0
    return-void
.end method

.method public sP()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;->EjP()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
