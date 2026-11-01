.class public final Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "isChecked",
        "",
        "p0",
        "(Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>()V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;->o0(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;Lcom/tn/lib/view/SwitchButton;Z)V

    return-void
.end method

.method private static final o0(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 1

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "k_pip_enable"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p2}, Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;->p0(Z)V

    return-void
.end method

.method private final p0(Z)V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lox/e;->a:Lox/e$a;

    invoke-virtual {v1}, Lox/e$a;->b()Lox/e;

    move-result-object v2

    invoke-interface {v2}, Lox/e;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lox/e$a;->b()Lox/e;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, p1

    invoke-static/range {v4 .. v10}, Lox/e$b;->c(Lox/e;Landroidx/fragment/app/FragmentActivity;ZZLandroid/view/ViewGroup;ILjava/lang/Object;)Landroid/app/PictureInPictureParams;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsnet/downloader/R$style;->DownloadBottomDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/transsion/postdetail/R$layout;->dialog_player_setting_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {}, Ljg/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/tn/lib/widget/R$style;->ActionSheetDialogLeft:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/tn/lib/widget/R$style;->ActionSheetDialogRight:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-static {}, Ljg/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x800003

    goto :goto_1

    :cond_1
    const v0, 0x800005

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p2

    sget-object v0, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {p2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {p2}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :cond_2
    sget p2, Lcom/transsion/postdetail/R$id;->switchBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tn/lib/view/SwitchButton;

    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string v0, "k_pip_enable"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    new-instance p2, Lcom/transsion/player/longvideo/ui/dialog/g;

    invoke-direct {p2, p0}, Lcom/transsion/player/longvideo/ui/dialog/g;-><init>(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;)V

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    return-void
.end method
