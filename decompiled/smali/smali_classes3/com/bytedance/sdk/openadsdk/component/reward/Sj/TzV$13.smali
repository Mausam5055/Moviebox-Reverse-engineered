.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kF:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->sP()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->EjP()V

    :cond_0
    return-void
.end method
