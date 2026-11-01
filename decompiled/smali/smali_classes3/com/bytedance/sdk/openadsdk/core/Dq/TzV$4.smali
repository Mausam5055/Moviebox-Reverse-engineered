.class Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setCanInterruptVideoPlay(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(ILjava/lang/String;)V

    return-void
.end method
