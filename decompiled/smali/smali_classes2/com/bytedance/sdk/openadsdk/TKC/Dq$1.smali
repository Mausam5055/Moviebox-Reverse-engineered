.class Lcom/bytedance/sdk/openadsdk/TKC/Dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TKC/Dq;->sP(Lcom/bytedance/sdk/openadsdk/FilterWord;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/TKC/Dq;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TKC/Dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Dq$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Dq$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/Dq;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Dq$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/Dq;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Dq$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/Dq;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object v0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    :cond_1
    return-void
.end method
