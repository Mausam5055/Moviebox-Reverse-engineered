.class Lcom/bytedance/sdk/openadsdk/core/Dq/vS$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    :cond_0
    return-void
.end method
