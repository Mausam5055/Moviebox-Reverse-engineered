.class Lcom/bytedance/sdk/openadsdk/common/dNu$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/dNu;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/dNu;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/dNu$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/dNu$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/dNu;->sP(Lcom/bytedance/sdk/openadsdk/common/dNu;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "loading ..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/dNu$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
