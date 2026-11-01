.class Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/sP$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/vS;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:J

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/vS;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->sP:Z

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->TKC:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/vS;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v1

    invoke-virtual {v1}, Ly5/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->sP:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->TKC:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;J)V

    const-string v0, "start_activity_action"

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/vS;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v1

    invoke-virtual {v1}, Ly5/b;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "playable tool error open"

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "activity start  fail "

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;->sP:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_2
    return-void
.end method
