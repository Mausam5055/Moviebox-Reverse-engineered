.class Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getUgenTemplateErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    const-string v1, "expressView is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
