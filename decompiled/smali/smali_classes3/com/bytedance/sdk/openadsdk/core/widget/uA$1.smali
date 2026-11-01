.class Lcom/bytedance/sdk/openadsdk/core/widget/uA$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/uA;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/uA;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/uA;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/uA;->sP(Lcom/bytedance/sdk/openadsdk/core/widget/uA;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
