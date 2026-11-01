.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_1
    :goto_0
    return-void
.end method
