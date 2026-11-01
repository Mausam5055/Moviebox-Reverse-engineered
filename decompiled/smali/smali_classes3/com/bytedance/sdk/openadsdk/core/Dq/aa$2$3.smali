.class Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;->Sj(Landroid/os/MessageQueue;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

.field final synthetic sP:Landroid/os/MessageQueue;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;ILandroid/os/MessageQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$3;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$3;->Sj:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$3;->sP:Landroid/os/MessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$3;->Sj:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$3;->sP:Landroid/os/MessageQueue;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;-><init>(IZLandroid/os/MessageQueue;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/sP;->sP()V

    const/4 v0, 0x0

    return v0
.end method
