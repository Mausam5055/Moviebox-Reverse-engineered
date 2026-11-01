.class public Lcom/bytedance/sdk/openadsdk/component/uA/Sj;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected Sj(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/model/sef;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
