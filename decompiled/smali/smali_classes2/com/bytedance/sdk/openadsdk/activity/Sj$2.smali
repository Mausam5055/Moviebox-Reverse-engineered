.class Lcom/bytedance/sdk/openadsdk/activity/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Sj;->WMZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/activity/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/activity/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/activity/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Yf:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/activity/Sj;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(I)[F

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/activity/Sj;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj([FLcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    return-void
.end method
