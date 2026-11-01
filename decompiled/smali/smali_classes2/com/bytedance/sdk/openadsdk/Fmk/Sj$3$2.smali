.class Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$2;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/uA/vS;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$2;->sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$2;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$2;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/vS;->setPreProgressHundred(Z)V

    :cond_0
    return-void
.end method
