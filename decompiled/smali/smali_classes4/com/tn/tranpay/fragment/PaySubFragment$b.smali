.class public final Lcom/tn/tranpay/fragment/PaySubFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PaySubFragment;->g0(Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)Lcom/tn/tranpay/fragment/PaySubFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;

.field final synthetic b:Lcom/tn/tranpay/fragment/PaySubFragment;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/tranpay/fragment/PaySubFragment;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->a:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->b:Lcom/tn/tranpay/fragment/PaySubFragment;

    iput-object p3, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->b:Lcom/tn/tranpay/fragment/PaySubFragment;

    iget-object v1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->f0(Lcom/tn/tranpay/fragment/PaySubFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->b:Lcom/tn/tranpay/fragment/PaySubFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->e0(Lcom/tn/tranpay/fragment/PaySubFragment;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->a:Landroidx/appcompat/widget/AppCompatImageView;

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
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
