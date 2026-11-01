.class public final Lcom/tn/tranpay/fragment/TranPayWebFragment$b;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/TranPayWebFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/fragment/TranPayWebFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1, p2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->n0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->e0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-virtual {p2}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lgh/c;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lgh/c;->i:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
