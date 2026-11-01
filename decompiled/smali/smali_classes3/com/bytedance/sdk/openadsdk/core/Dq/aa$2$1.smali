.class Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

.field final synthetic Sj:[Landroid/os/MessageQueue;

.field final synthetic TKC:I

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;[Landroid/os/MessageQueue;II)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->EjP:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->Sj:[Landroid/os/MessageQueue;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->sP:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->TKC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->Sj:[Landroid/os/MessageQueue;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->EjP:Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->Sj:[Landroid/os/MessageQueue;

    aget-object v1, v1, v2

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->sP:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2$1;->TKC:I

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;Landroid/os/MessageQueue;II)V

    return-void
.end method
