.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->onAdTimeOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;->TKC()V

    :cond_0
    return-void
.end method
