.class public Lcom/bytedance/sdk/openadsdk/TTC2Proxy;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Landroid/content/Context;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/Jcg;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/vS;I)V

    return-void
.end method
