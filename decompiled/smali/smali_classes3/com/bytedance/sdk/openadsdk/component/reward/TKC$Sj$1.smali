.class Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->uA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:J

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

.field final synthetic sP:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;JJJJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->Sj:J

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->sP:J

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->sP:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lu5/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lu5/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Zq()J

    move-result-wide v1

    const/16 v3, 0x64

    invoke-interface {v0, v1, v2, v3}, Lu5/b$b;->Sj(JI)V

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->sP:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->sP:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->aa()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Fmk()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lz5/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->Sj:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J

    move-result-wide p1

    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lu5/b$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lu5/b$b;

    move-result-object p1

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;->sP:J

    invoke-interface {p1, v0, v1, v2, v3}, Lu5/b$b;->Sj(JJ)V

    :cond_0
    return-void
.end method
