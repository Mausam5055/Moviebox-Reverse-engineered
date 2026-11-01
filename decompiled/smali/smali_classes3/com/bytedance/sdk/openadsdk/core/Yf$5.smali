.class Lcom/bytedance/sdk/openadsdk/core/Yf$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Yf;->initRenderFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;->Sj()V

    :cond_0
    return-void
.end method
