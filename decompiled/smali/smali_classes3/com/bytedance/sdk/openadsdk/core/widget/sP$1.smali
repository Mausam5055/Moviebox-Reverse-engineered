.class Lcom/bytedance/sdk/openadsdk/core/widget/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/widget/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;->Sj()V

    :cond_0
    return-void
.end method
