.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;
.super Lcom/bytedance/adsdk/sP/vS;


# instance fields
.field private Sj:Lcom/bytedance/adsdk/ugeno/EjP;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/vS;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Jcg()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/vS;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Dq()V

    :cond_0
    return-void
.end method
