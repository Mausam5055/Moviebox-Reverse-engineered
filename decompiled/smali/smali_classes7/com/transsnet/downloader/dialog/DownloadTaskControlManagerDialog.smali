.class public final Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J!\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0017\u001a\u0004\u0008\u0004\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "",
        "haveBatteryPermission",
        "isEnableMember",
        "<init>",
        "(ZZ)V",
        "()V",
        "",
        "initView",
        "t0",
        "r0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function0;",
        "callback",
        "s0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "c",
        "Z",
        "d",
        "()Z",
        "setEnableMember",
        "(Z)V",
        "Lpy/l;",
        "e",
        "Lpy/l;",
        "bind",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "batteryPermissionCallback",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Lpy/l;

.field private f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    sget v0, Lcom/transsnet/downloader/R$layout;->dialog_download_task_control_manager_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    iput-boolean p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->c:Z

    iput-boolean p2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->d:Z

    return-void
.end method

.method private final initView()V
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lpy/l;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/l;->c:Landroidx/constraintlayout/widget/Group;

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->d:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lpy/l;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lpy/l;->b:Landroidx/constraintlayout/widget/Group;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->c:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->x0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->w0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->v0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->u0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    return-void
.end method

.method private final r0()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/commercializationapi/ITaskCenterApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    sget-object v3, Lcom/transsion/memberapi/MemberSceneType;->SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

    const-string v4, ""

    invoke-interface {v1, v0, v4, v2, v3}, Lcom/transsion/commercializationapi/ITaskCenterApi;->f(Ljava/lang/Integer;Ljava/lang/String;Lok/b;Lcom/transsion/memberapi/MemberSceneType;)V

    :cond_0
    return-void
.end method

.method private final t0()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lpy/l;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lpy/l;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/transsnet/downloader/dialog/z;

    invoke-direct {v3, p0}, Lcom/transsnet/downloader/dialog/z;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lpy/l;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lpy/l;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    new-instance v4, Lcom/transsnet/downloader/dialog/a0;

    invoke-direct {v4, p0}, Lcom/transsnet/downloader/dialog/a0;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {v4, v3, v1, v3}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsnet/downloader/manager/g;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/transsnet/downloader/R$string;->download_pause_all:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    sget v4, Lcom/transsnet/downloader/R$string;->download_resume_all:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lpy/l;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lpy/l;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcom/transsnet/downloader/R$string;->download_xx_size_at_once:I

    new-array v6, v0, [Ljava/lang/Object;

    const-class v7, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v7, v6}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/transsion/memberapi/IMemberApi;->D()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/transsnet/downloader/dialog/b0;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/dialog/b0;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lpy/l;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lpy/l;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/transsnet/downloader/dialog/c0;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/dialog/c0;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method private static final u0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final v0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 5

    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsnet/downloader/manager/g;->i()Z

    move-result v2

    const-class v3, Lcom/transsion/commercializationapi/IInterceptReportApi;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1, v0}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->m()V

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercializationapi/IInterceptReportApi;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/transsion/commercializationapi/IInterceptReportApi;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, v1, v0}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->w()V

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercializationapi/IInterceptReportApi;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/commercializationapi/IInterceptReportApi;->e()V

    :cond_1
    const-class p1, Lcom/transsion/memberapi/IMemberApi;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/memberapi/IMemberApi;->g()Z

    move-result v4

    :cond_2
    if-eqz v4, :cond_3

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsnet/downloader/R$string;->download_task_control_manager_start_mul:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    goto :goto_0

    :cond_3
    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsnet/downloader/R$string;->download_task_control_manager_start:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final w0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class v0, Lcom/transsion/commercializationapi/IInterceptReportApi;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercializationapi/IInterceptReportApi;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/commercializationapi/IInterceptReportApi;->g()V

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->r0()V

    return-void
.end method

.method private static final x0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    const-string v1, "download_manager_dialog"

    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->f:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsnet/downloader/util/d;->l(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    invoke-static {p1}, Lpy/l;->a(Landroid/view/View;)Lpy/l;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lpy/l;

    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->initView()V

    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->t0()V

    return-void
.end method

.method public final s0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method
