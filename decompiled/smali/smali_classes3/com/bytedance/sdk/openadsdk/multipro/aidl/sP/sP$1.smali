.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->onItemClickClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->sP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
