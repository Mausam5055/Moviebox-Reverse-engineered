.class Lcom/bytedance/sdk/openadsdk/vS/sP$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/vS/sP;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/vS/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/vS/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$7;->Sj:Lcom/bytedance/sdk/openadsdk/vS/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/vS/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$7;->Sj:Lcom/bytedance/sdk/openadsdk/vS/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/vS/sP;->sP(Lcom/bytedance/sdk/openadsdk/vS/sP;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$7;->Sj:Lcom/bytedance/sdk/openadsdk/vS/sP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/vS/sP;->sP(Lcom/bytedance/sdk/openadsdk/vS/sP;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/uvD/Sj;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/uvD/Sj;->Sj()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$7;->Sj:Lcom/bytedance/sdk/openadsdk/vS/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/vS/sP;->TKC(Lcom/bytedance/sdk/openadsdk/vS/sP;)Lcom/bytedance/sdk/openadsdk/uvD/Sj;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$7;->Sj:Lcom/bytedance/sdk/openadsdk/vS/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/vS/sP;->TKC(Lcom/bytedance/sdk/openadsdk/vS/sP;)Lcom/bytedance/sdk/openadsdk/uvD/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/uvD/Sj;->Sj()V

    :cond_3
    return-void
.end method
