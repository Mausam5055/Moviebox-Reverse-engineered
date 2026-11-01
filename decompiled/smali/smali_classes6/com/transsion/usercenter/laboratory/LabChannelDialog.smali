.class public final Lcom/transsion/usercenter/laboratory/LabChannelDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabChannelDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
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
        "Lfw/s;",
        "c",
        "Lfw/s;",
        "viewBinding",
        "",
        "d",
        "Ljava/lang/String;",
        "channelTag",
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


# instance fields
.field private c:Lfw/s;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_channel_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->q0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->s0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->r0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lyg/b;->a:Lyg/b$a;

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lyg/b$a;->k(Ljava/lang/String;)V

    sget-object p1, Luh/b;->a:Luh/b$a;

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u81ea\u5b9a\u4e49\u6210\u529f -- channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonGP:I

    if-ne p2, p1, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    const-string p2, "gp"

    invoke-virtual {p1, p2}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonPS:I

    if-ne p2, p1, :cond_1

    sget-object p1, Luh/b;->a:Luh/b$a;

    const-string p2, "ps"

    invoke-virtual {p1, p2}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/usercenter/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lfw/s;->a(Landroid/view/View;)Lfw/s;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lfw/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {p2, p1}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ps"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lfw/s;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/s;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonPS:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    const-string p2, "gp"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lfw/s;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/s;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonGP:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lfw/s;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/s;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lfw/s;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lfw/s;->b:Landroid/widget/Button;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/transsion/usercenter/laboratory/a;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/a;-><init>(Lcom/transsion/usercenter/laboratory/LabChannelDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lfw/s;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lfw/s;->c:Landroid/widget/Button;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/transsion/usercenter/laboratory/b;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/b;-><init>(Lcom/transsion/usercenter/laboratory/LabChannelDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lfw/s;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lfw/s;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/transsion/usercenter/laboratory/c;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/c;-><init>(Lcom/transsion/usercenter/laboratory/LabChannelDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_5
    return-void
.end method
