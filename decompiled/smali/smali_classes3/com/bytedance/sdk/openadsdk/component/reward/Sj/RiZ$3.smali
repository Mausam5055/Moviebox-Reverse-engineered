.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$3;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->HiB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;)V

    :cond_0
    return-void
.end method
