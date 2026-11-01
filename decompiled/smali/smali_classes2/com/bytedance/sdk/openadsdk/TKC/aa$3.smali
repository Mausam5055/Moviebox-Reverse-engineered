.class Lcom/bytedance/sdk/openadsdk/TKC/aa$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/200"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method
