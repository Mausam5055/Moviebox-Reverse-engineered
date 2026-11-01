.class public final Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0008J!\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R \u0010\u0016\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "outState",
        "onSaveInstanceState",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lkotlin/Function0;",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "mCallback",
        "Lso/h;",
        "d",
        "Lso/h;",
        "bind",
        "",
        "e",
        "Z",
        "isSelect",
        "f",
        "a",
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


# static fields
.field public static final f:Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog$a;


# instance fields
.field private c:Lkotlin/jvm/functions/Function0;

.field private d:Lso/h;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->f:Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/postdetail/R$layout;->dialog_no_subtitle_tip_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->q0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->r0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->s0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final q0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final r0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iget-object p0, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->c:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method private static final s0(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->d:Lso/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lso/h;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->e:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 p1, 0x0

    sget v0, Lcom/transsion/baseui/R$style;->NormalDialogThemeTrans:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->e:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "no_subtitle_tip_again"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "no_subtitle_tip_again"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lso/h;->a(Landroid/view/View;)Lso/h;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->d:Lso/h;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, -0x2

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->d:Lso/h;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lso/h;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/transsion/postdetail/ui/dialog/i;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/dialog/i;-><init>(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->d:Lso/h;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lso/h;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/transsion/postdetail/ui/dialog/j;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/dialog/j;-><init>(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;->d:Lso/h;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lso/h;->c:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/transsion/postdetail/ui/dialog/k;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/dialog/k;-><init>(Lcom/transsion/postdetail/ui/dialog/NoSubtitleTipDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method
