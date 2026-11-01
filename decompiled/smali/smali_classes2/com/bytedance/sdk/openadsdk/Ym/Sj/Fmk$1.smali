.class Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;->Sj:Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;->Sj:Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;->Sj:Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;->Sj:Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk$1;->Sj:Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
