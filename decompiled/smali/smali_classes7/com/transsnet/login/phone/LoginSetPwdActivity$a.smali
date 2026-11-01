.class public final Lcom/transsnet/login/phone/LoginSetPwdActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginSetPwdActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/phone/LoginSetPwdActivity;


# direct methods
.method public constructor <init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->p0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)Lzy/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lzy/k;->b:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->p0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)Lzy/k;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lzy/k;->f:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_3
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
