.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/app/Activity;)V

    return-void
.end method
