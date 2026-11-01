.class Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$3;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$3;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$3;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$3;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method
