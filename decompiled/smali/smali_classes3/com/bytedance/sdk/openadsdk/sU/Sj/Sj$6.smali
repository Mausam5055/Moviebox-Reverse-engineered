.class Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$6;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$6;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$6;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$6;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$6;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->setProgress(I)V

    :cond_0
    return-void
.end method
