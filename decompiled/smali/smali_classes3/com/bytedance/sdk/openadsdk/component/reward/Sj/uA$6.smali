.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Landroid/webkit/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V
    .locals 6

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loading_h5_success"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;Z)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;Z)Z

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$6;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;Z)Z

    return-void
.end method
