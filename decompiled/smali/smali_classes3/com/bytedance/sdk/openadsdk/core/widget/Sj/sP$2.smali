.class Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;)Z

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;->TKC(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;)Landroid/os/MessageQueue;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;-><init>(IZLandroid/os/MessageQueue;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;->sP()V

    const/4 v0, 0x0

    return v0
.end method
