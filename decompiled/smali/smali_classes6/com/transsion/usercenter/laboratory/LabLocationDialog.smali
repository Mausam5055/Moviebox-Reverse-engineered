.class public final Lcom/transsion/usercenter/laboratory/LabLocationDialog;
.super Lcom/transsion/baseui/dialog/BaseViewBindingDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/laboratory/LabLocationDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseViewBindingDialog<",
        "Lfw/z;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR.\u0010\u0014\u001a\u001c\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabLocationDialog;",
        "Lcom/transsion/baseui/dialog/BaseViewBindingDialog;",
        "Lfw/z;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "n0",
        "()Lkotlin/jvm/functions/Function3;",
        "bindingInflater",
        "d",
        "a",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcom/transsion/usercenter/laboratory/LabLocationDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/laboratory/LabLocationDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/laboratory/LabLocationDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/laboratory/LabLocationDialog;->d:Lcom/transsion/usercenter/laboratory/LabLocationDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;-><init>()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabLocationDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabLocationDialog;->s0(Lcom/transsion/usercenter/laboratory/LabLocationDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/usercenter/laboratory/LabLocationDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabLocationDialog;->r0(Lcom/transsion/usercenter/laboratory/LabLocationDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabLocationDialog;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/z;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfw/z;->e:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object v1

    check-cast v1, Lfw/z;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lfw/z;->f:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object v2

    check-cast v2, Lfw/z;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lfw/z;->g:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object v3

    check-cast v3, Lfw/z;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lfw/z;->d:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v3, 0x1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_6

    :cond_4
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_lo_mock_test_lab_lat"

    invoke-virtual {v3, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "address is empty"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "name is empty"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "lon is empty"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "lat is empty"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/laboratory/LabLocationDialog;Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "key_lo_mock_test_lab_lat"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/z;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfw/z;->e:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/z;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lfw/z;->f:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/z;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/z;->g:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/z;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lfw/z;->d:Lcom/transsion/baseui/widget/EditTextWithClear;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public n0()Lkotlin/jvm/functions/Function3;
    .locals 1

    sget-object v0, Lcom/transsion/usercenter/laboratory/LabLocationDialog$bindingInflater$1;->INSTANCE:Lcom/transsion/usercenter/laboratory/LabLocationDialog$bindingInflater$1;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/usercenter/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "key_lo_mock_test_lab_lat"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "|"

    const/4 v0, 0x0

    const/4 v7, 0x2

    invoke-static {v1, p2, v0, v7, p1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p2

    check-cast p2, Lfw/z;

    if-eqz p2, :cond_1

    iget-object v1, p2, Lfw/z;->e:Lcom/transsion/baseui/widget/EditTextWithClear;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lfw/z;->f:Lcom/transsion/baseui/widget/EditTextWithClear;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lfw/z;->g:Lcom/transsion/baseui/widget/EditTextWithClear;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lfw/z;->d:Lcom/transsion/baseui/widget/EditTextWithClear;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/z;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/z;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/transsion/usercenter/laboratory/x;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/x;-><init>(Lcom/transsion/usercenter/laboratory/LabLocationDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/z;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lfw/z;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/transsion/usercenter/laboratory/y;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/y;-><init>(Lcom/transsion/usercenter/laboratory/LabLocationDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
