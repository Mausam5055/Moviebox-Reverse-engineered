.class Lcom/bytedance/sdk/openadsdk/component/reward/Zq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTClientBidding;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Dq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj()V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->win(Ljava/lang/Double;)V

    return-void
.end method
