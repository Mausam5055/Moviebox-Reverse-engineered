.class public final Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$b;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$b;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

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

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$b;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->o0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$b;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$b;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrn/b;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lrn/b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
