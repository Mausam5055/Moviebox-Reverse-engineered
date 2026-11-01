.class Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;->Sj(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;->wE()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xhi:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->ley()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->sP()V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->vS()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB$Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB$Sj;->uvD()V

    :cond_1
    return-void
.end method
