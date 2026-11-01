.class public final Lcom/transsnet/login/phone/LoginPhoneFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzy/j;

.field final synthetic b:Lcom/transsnet/login/phone/LoginPhoneFragment;


# direct methods
.method public constructor <init>(Lzy/j;Lcom/transsnet/login/phone/LoginPhoneFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneFragment$a;->a:Lzy/j;

    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneFragment$a;->b:Lcom/transsnet/login/phone/LoginPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneFragment$a;->a:Lzy/j;

    iget-object p1, p1, Lzy/j;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneFragment$a;->a:Lzy/j;

    iget-object p1, p1, Lzy/j;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneFragment$a;->b:Lcom/transsnet/login/phone/LoginPhoneFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lzy/j;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lzy/j;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneFragment$a;->b:Lcom/transsnet/login/phone/LoginPhoneFragment;

    sget v1, Lcom/transsnet/login/R$string;->login_phone_err:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneFragment$a;->b:Lcom/transsnet/login/phone/LoginPhoneFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lzy/j;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lzy/j;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
