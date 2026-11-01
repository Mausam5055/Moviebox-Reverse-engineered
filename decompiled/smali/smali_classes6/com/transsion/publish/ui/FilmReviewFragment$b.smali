.class public final Lcom/transsion/publish/ui/FilmReviewFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/FilmReviewFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/FilmReviewFragment;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/FilmReviewFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    iput-object p2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$isBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lhp/h;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v2, Lhp/h;->d:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Typeface;

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lhp/h;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lhp/h;->d:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v2, v3}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$setBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v2, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$setBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;Z)V

    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lhp/h;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lhp/h;->d:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lhp/h;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lhp/h;->d:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    if-lt v1, v2, :cond_7

    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    move-result v2

    if-gt v1, v2, :cond_7

    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lhp/h;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lhp/h;->w:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lhp/h;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lhp/h;->w:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v3}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lhp/h;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lhp/h;->w:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    move-result v2

    if-le v1, v2, :cond_b

    sget-object v1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v2, Lcom/transsion/publish/R$string;->post_title_length_max:I

    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    move-result v2

    if-le v1, v2, :cond_b

    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v1}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/h;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lhp/h;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/h;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lhp/h;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_b
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
