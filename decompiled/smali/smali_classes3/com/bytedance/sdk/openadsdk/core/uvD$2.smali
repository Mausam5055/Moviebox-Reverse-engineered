.class Lcom/bytedance/sdk/openadsdk/core/uvD$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/uvD;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/core/uvD;)Lcom/bytedance/sdk/openadsdk/Sj/sP/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/core/uvD;)Lcom/bytedance/sdk/openadsdk/Sj/sP/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->sP(Lcom/bytedance/sdk/openadsdk/core/uvD;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    const/16 p2, 0x9

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/uvD;->TKC(Lcom/bytedance/sdk/openadsdk/core/uvD;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Fmk()V

    return-void
.end method
