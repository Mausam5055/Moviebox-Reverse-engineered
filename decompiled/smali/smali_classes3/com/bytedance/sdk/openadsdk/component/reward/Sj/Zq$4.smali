.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "overlay"

    return-object v0
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
