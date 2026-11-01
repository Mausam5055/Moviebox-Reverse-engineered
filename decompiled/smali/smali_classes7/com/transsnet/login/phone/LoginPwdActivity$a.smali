.class public final Lcom/transsnet/login/phone/LoginPwdActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPwdActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/phone/LoginPwdActivity;

.field final synthetic b:Lzy/g;


# direct methods
.method public constructor <init>(Lcom/transsnet/login/phone/LoginPwdActivity;Lzy/g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginPwdActivity;

    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPwdActivity$a;->b:Lzy/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginPwdActivity;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPwdActivity;->A0(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginPwdActivity;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPwdActivity;->B0(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity$a;->b:Lzy/g;

    iget-object v0, v0, Lzy/g;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

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
