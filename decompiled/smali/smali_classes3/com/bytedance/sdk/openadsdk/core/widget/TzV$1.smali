.class Lcom/bytedance/sdk/openadsdk/core/widget/TzV$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Landroid/content/Context;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/TzV;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/TzV;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/widget/TzV;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/widget/TzV;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
