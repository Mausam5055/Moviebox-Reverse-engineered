.class Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "FullInteractionStyleView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
