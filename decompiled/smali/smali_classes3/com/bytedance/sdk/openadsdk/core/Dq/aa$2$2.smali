.class Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;->Sj(Landroid/os/MessageQueue;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:I

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

.field final synthetic Sj:I

.field final synthetic TKC:I

.field final synthetic sP:Landroid/os/MessageQueue;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;ILandroid/os/MessageQueue;II)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->Sj:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->sP:Landroid/os/MessageQueue;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->TKC:I

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->EjP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->sP:Landroid/os/MessageQueue;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->TKC:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;Landroid/os/MessageQueue;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->sP:Landroid/os/MessageQueue;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$2;->EjP:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;Landroid/os/MessageQueue;I)V

    return-void
.end method
