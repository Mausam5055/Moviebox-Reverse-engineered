.class Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->EjP()Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->setIsMute(Z)V

    :cond_0
    return-void
.end method
