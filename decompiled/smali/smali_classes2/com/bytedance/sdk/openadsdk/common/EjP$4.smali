.class Lcom/bytedance/sdk/openadsdk/common/EjP$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/common/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/EjP;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->Sj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/common/EjP;)Lcom/bytedance/sdk/openadsdk/common/TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/common/EjP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/common/EjP;)Lcom/bytedance/sdk/openadsdk/common/TKC;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB(Lcom/bytedance/sdk/openadsdk/common/EjP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS(Lcom/bytedance/sdk/openadsdk/common/EjP;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->Sj:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Jcg(Lcom/bytedance/sdk/openadsdk/common/EjP;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Dq(Lcom/bytedance/sdk/openadsdk/common/EjP;)J

    move-result-wide v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->uA(Lcom/bytedance/sdk/openadsdk/common/EjP;)Z

    move-result v9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->TEQ(Lcom/bytedance/sdk/openadsdk/common/EjP;)I

    move-result v10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Ym(Lcom/bytedance/sdk/openadsdk/common/EjP;)J

    move-result-wide v11

    invoke-virtual/range {v2 .. v12}, Lcom/bytedance/sdk/openadsdk/common/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILjava/lang/String;JZIJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/common/EjP;I)I

    :cond_0
    return-void
.end method
