.class Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;
.super Lcom/bytedance/sdk/openadsdk/activity/sP$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EjP"
.end annotation


# instance fields
.field private Dq:I

.field private final Jcg:I

.field private uA:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V

    const/16 p1, 0x64

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LqL()I

    move-result p3

    if-ltz p3, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LqL()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->vS:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    return-void

    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    return-void
.end method


# virtual methods
.method protected Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uWH()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->uA:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    if-gt v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->uA:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ()Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->handleMessage(Landroid/os/Message;)Z

    return v1
.end method

.method public sP(I)V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP(I)V

    const/high16 p1, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    sub-float/2addr v3, v0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC:F

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj(J)V

    return-void

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC:F

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    sub-float/2addr v3, v0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    :cond_3
    return-void
.end method
