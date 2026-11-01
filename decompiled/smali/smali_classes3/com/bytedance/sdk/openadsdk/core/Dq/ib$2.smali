.class Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Jcg(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Dq(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->aa()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Dq(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    :cond_1
    return-void
.end method
