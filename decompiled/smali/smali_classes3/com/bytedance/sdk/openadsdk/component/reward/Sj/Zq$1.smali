.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB()V

    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J

    move-result-wide v5

    sub-long v5, v0, v5

    const/4 v9, 0x0

    move v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J

    move-result-wide v6

    sub-long v5, v4, v6

    const-string v8, "endcard"

    const/4 v2, 0x0

    const-string v4, "fail"

    move-object v7, p3

    move v9, p1

    move-object v10, p2

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->wE()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    const-string v1, "tt_skip_btn"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;J)V

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J

    move-result-wide v6

    sub-long v5, v4, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v4, "success"

    const-string v8, "endcard"

    move-object v7, p1

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
