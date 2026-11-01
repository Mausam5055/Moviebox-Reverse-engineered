.class Lcom/bytedance/sdk/openadsdk/sU/Dq$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA(Lcom/bytedance/sdk/openadsdk/sU/Dq;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "Clicking on the hot zone causes the program to freeze."

    const/4 v4, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA(Lcom/bytedance/sdk/openadsdk/sU/Dq;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ(Lcom/bytedance/sdk/openadsdk/sU/Dq;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ym(Lcom/bytedance/sdk/openadsdk/sU/Dq;)I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(Lcom/bytedance/sdk/openadsdk/sU/Dq;J)J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(ILjava/lang/String;)V

    return-void
.end method
