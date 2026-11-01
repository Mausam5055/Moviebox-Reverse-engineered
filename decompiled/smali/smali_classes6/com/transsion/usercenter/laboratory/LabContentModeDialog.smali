.class public final Lcom/transsion/usercenter/laboratory/LabContentModeDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabContentModeDialog;",
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
        "Lfw/t;",
        "c",
        "Lfw/t;",
        "viewBinding",
        "",
        "d",
        "Z",
        "isUGCMode",
        "e",
        "isResetMode",
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
.field private c:Lfw/t;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_content_mode:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->q0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->r0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->s0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    const-string v0, "key_or_content_mode_local"

    if-eqz p1, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    const-string v1, "\u5f53\u524d\u5a92\u4f53\u64ad\u653e\u6a21\u5f0f\u5df2\u4f7f\u7528\u7ebf\u4e0a\u914d\u7f6e"

    invoke-virtual {p1, v1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_0
    sget-object p1, Luh/b;->a:Luh/b$a;

    iget-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "UGCVideo"

    goto :goto_0

    :cond_1
    const-string v1, "Subject"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u5a92\u4f53\u64ad\u653e\u6a21\u5f0f\u662f playMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p1, Lak/g;->a:Lak/g;

    iget-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    invoke-virtual {p1, v1}, Lak/g;->e(Z)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/widget/RadioGroup;I)V
    .locals 2

    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonSubject:I

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonUGCVideo:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_1

    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonReset:I

    if-ne p2, p1, :cond_2

    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    :cond_2
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
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lfw/t;->a(Landroid/view/View;)Lfw/t;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lfw/t;

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "key_or_content_mode_local"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lfw/t;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfw/t;->g:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/usercenter/R$id;->radioButtonReset:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    iput-boolean p2, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    goto :goto_0

    :cond_1
    sget-object p1, Lak/g;->a:Lak/g;

    invoke-virtual {p1}, Lak/g;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lfw/t;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lfw/t;->g:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/usercenter/R$id;->radioButtonUGCVideo:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    :cond_2
    iput-boolean p2, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lfw/t;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lfw/t;->g:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_4

    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonSubject:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_4
    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lfw/t;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lfw/t;->b:Landroid/widget/Button;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/transsion/usercenter/laboratory/d;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/d;-><init>(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lfw/t;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lfw/t;->c:Landroid/widget/Button;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/transsion/usercenter/laboratory/e;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/e;-><init>(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lfw/t;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lfw/t;->g:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/transsion/usercenter/laboratory/f;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/f;-><init>(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_7
    return-void
.end method
