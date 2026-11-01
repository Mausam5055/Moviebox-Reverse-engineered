.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;
.super Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;


# instance fields
.field private final Sj:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

.field private final sP:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getVideoView()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
