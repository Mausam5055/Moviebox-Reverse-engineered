.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->ley()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(ILjava/lang/String;)V

    return-void
.end method
