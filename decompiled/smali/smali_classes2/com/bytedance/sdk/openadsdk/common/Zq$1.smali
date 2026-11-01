.class Lcom/bytedance/sdk/openadsdk/common/Zq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/Zq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/common/Zq;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/common/Zq;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP()V

    return-void
.end method
