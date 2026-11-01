.class Lcom/bytedance/sdk/openadsdk/activity/vS$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:I

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:I

.field final synthetic sP:Z

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Sj:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->sP:Z

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->TKC:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->EjP:Ljava/lang/String;

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->HiB:I

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->vS:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sU()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Sj:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->sP:Z

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->TKC:I

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->EjP:Ljava/lang/String;

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->HiB:I

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->vS:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "rewarded_video"

    aput-object v3, v2, v0

    const-string v0, "executeRewardVideoCallback execute throw Exception : "

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "Scene"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
