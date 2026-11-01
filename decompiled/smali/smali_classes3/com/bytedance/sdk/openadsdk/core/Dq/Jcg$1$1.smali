.class Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/utils/WMZ;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)V

    return-void
.end method
