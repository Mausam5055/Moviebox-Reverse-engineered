.class public final Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/dialog/MemberPromoCodeDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;


# direct methods
.method constructor <init>(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lwm/j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lwm/j;->f:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lwm/j;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lwm/j;->f:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->A0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lwm/j;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lwm/j;->f:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lwm/j;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lwm/j;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lwm/j;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lwm/j;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method
