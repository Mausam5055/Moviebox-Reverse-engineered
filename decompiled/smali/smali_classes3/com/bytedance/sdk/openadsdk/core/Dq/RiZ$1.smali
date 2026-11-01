.class Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
