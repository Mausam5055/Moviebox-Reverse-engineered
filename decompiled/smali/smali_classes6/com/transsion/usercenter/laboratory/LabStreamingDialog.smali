.class public final Lcom/transsion/usercenter/laboratory/LabStreamingDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabStreamingDialog;",
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
        "Lfw/b0;",
        "c",
        "Lfw/b0;",
        "viewBinding",
        "Lcom/transsion/baselib/utils/PlayMode;",
        "d",
        "Lcom/transsion/baselib/utils/PlayMode;",
        "playMode",
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
.field private c:Lfw/b0;

.field private d:Lcom/transsion/baselib/utils/PlayMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_streaming_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->s0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->q0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->r0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 3

    sget-object p1, Luh/b;->a:Luh/b$a;

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u5a92\u4f53\u64ad\u653e\u6a21\u5f0f\u662f playMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    if-eqz p1, :cond_0

    sget-object v0, Lak/t;->a:Lak/t;

    invoke-virtual {v0, p1}, Lak/t;->c(Lcom/transsion/baselib/utils/PlayMode;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonDownload:I

    if-ne p2, p1, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    const-string p2, "PlayMode.DOWNLOAD"

    invoke-virtual {p1, p2}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->DOWNLOAD:Lcom/transsion/baselib/utils/PlayMode;

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonStream:I

    if-ne p2, p1, :cond_1

    sget-object p1, Luh/b;->a:Luh/b$a;

    const-string p2, "PlayMode.STREAM"

    invoke-virtual {p1, p2}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

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

    invoke-static {p1}, Lfw/b0;->a(Landroid/view/View;)Lfw/b0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lfw/b0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lak/t;->a:Lak/t;

    invoke-virtual {p1}, Lak/t;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lfw/b0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfw/b0;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_0

    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonStream:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lfw/b0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/b0;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonDownload:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_2
    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->DOWNLOAD:Lcom/transsion/baselib/utils/PlayMode;

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lfw/b0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lfw/b0;->b:Landroid/widget/Button;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/transsion/usercenter/laboratory/g0;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/g0;-><init>(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lfw/b0;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lfw/b0;->c:Landroid/widget/Button;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/transsion/usercenter/laboratory/h0;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/h0;-><init>(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lfw/b0;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lfw/b0;->f:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/transsion/usercenter/laboratory/i0;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/i0;-><init>(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_6
    return-void
.end method
