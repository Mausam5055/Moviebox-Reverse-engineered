.class Lcom/bytedance/sdk/openadsdk/activity/vS$3;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/activity/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->Sj:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sU()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->Sj:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "fullscreen_interstitial_ad"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "executeFullVideoCallback execute throw Exception : "

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "Scene"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
