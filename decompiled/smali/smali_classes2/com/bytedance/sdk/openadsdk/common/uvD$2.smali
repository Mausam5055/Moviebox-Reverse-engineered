.class Lcom/bytedance/sdk/openadsdk/common/uvD$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/uvD;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/uvD;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/common/uvD;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/common/uvD;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->Ym()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    const-string v0, "forward"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/common/uvD;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/common/uvD;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->aa()V

    :cond_0
    return-void
.end method
