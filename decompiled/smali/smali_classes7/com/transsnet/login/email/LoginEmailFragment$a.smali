.class public final Lcom/transsnet/login/email/LoginEmailFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/email/LoginEmailFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzy/b;


# direct methods
.method public constructor <init>(Lzy/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lzy/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/u;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lzy/b;

    iget-object v0, v0, Lzy/b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvTips"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    const-string v0, "btnClear"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lzy/b;

    iget-object p1, p1, Lzy/b;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lzy/b;

    iget-object p1, p1, Lzy/b;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :goto_1
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
