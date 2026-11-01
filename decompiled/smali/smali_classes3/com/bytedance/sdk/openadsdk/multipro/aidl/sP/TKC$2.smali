.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->onAdVideoBarClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_0
    return-void
.end method
