.class Lcom/bytedance/sdk/openadsdk/TKC/aa$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TKC/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;->Sj(ILcom/bytedance/sdk/openadsdk/FilterWord;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->dismiss()V

    return-void
.end method
