.class Lcom/bytedance/sdk/openadsdk/core/Dq/vS$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
