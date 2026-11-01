.class Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$1;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;I)I

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj()V

    :cond_0
    return-void
.end method
