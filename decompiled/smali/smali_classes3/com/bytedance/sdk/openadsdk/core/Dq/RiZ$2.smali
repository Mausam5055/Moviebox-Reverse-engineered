.class Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/LD;->Sj(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS(I)V

    return-void
.end method
