.class public Lcom/bytedance/sdk/openadsdk/Ym/Sj;
.super Lcom/bytedance/sdk/component/Sj/uP;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/uP;-><init>()V

    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj/uP;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method protected TKC()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj/uP;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj(Landroid/webkit/WebView;Lcom/bytedance/sdk/component/Sj/uP;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
