.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/ViewGroup;I)Z
    .locals 0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/Sj;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/Sj;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/Sj;->setExtraFuncationHelper(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    const/4 p1, 0x1

    return p1
.end method
