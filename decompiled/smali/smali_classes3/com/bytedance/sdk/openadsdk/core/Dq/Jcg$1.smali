.class Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/vS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;Ljava/util/List;)Ljava/util/List;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;Ljava/util/List;)Ljava/util/List;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onAdLoad: net work response duration = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "run in  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExpressAdLoadManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    :cond_2
    return-void
.end method
