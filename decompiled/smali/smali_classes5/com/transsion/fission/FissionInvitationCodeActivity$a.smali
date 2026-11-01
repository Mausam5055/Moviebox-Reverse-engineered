.class public final Lcom/transsion/fission/FissionInvitationCodeActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/fission/FissionInvitationCodeActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/fission/FissionInvitationCodeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/fission/FissionInvitationCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/fission/FissionInvitationCodeActivity$a;->a:Lcom/transsion/fission/FissionInvitationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/fission/FissionInvitationCodeActivity$a;->a:Lcom/transsion/fission/FissionInvitationCodeActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lyk/a;

    iget-object v0, v0, Lyk/a;->b:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

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
