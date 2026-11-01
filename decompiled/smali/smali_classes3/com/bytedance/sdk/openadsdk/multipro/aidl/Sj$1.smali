.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;->onServiceConnected()V

    :cond_0
    return-void
.end method
