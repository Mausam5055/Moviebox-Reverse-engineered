.class public Lcom/bytedance/sdk/openadsdk/component/reward/Ym;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;
    }
.end annotation


# instance fields
.field private EjP:J

.field private HiB:Z

.field private final Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

.field private TKC:J

.field private sP:J

.field private vS:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

    const-string p1, "reward_callback_fallback"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->vS:Z

    :cond_0
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZI)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string p1, "reward_callback"

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    const-string p1, "reward_fail_callback"

    goto :goto_0

    :goto_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/reward/Ym$1;

    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym$1;-><init>(I)V

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->EjP:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    sub-long v4, v2, v4

    :cond_0
    add-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->vS:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->sP:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;->Sj()V

    :cond_3
    return-void
.end method

.method public Sj()V
    .locals 8

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->EjP:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->EjP:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    :cond_1
    return-void
.end method

.method public Sj(J)V
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->sP:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->sP:J

    return-void
.end method

.method public TKC()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    return-void
.end method

.method public sP()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    return-void
.end method
