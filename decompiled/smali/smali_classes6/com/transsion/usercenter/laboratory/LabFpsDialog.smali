.class public final Lcom/transsion/usercenter/laboratory/LabFpsDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabFpsDialog;",
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
        "Lfw/v;",
        "c",
        "Lfw/v;",
        "viewBinding",
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
.field private c:Lfw/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_fps_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabFpsDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->r0(Lcom/transsion/usercenter/laboratory/LabFpsDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->s0(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabFpsDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->q0(Lcom/transsion/usercenter/laboratory/LabFpsDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/laboratory/LabFpsDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabFpsDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final s0(Landroid/widget/RadioGroup;I)V
    .locals 1

    sget p0, Lcom/transsion/usercenter/R$id;->radioButtonFpsOpen:I

    const-string v0, "debug_fps"

    if-ne p1, p0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    const-string p1, "show fps"

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "open"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/usercenter/R$id;->radioButtonFpsClose:I

    if-ne p1, p0, :cond_1

    sget-object p0, Luh/b;->a:Luh/b$a;

    const-string p1, "dismiss fps"

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "close"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

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

    invoke-static {p1}, Lfw/v;->a(Landroid/view/View;)Lfw/v;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->c:Lfw/v;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "debug_fps"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "open"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->c:Lfw/v;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lfw/v;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_1

    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonFpsOpen:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->c:Lfw/v;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lfw/v;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_1

    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonFpsClose:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->c:Lfw/v;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/v;->b:Landroid/widget/Button;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/transsion/usercenter/laboratory/m;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/m;-><init>(Lcom/transsion/usercenter/laboratory/LabFpsDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->c:Lfw/v;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lfw/v;->c:Landroid/widget/Button;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/transsion/usercenter/laboratory/n;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/n;-><init>(Lcom/transsion/usercenter/laboratory/LabFpsDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabFpsDialog;->c:Lfw/v;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lfw/v;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/transsion/usercenter/laboratory/o;

    invoke-direct {p2}, Lcom/transsion/usercenter/laboratory/o;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_4
    return-void
.end method
