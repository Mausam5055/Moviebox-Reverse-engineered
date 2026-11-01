.class public final Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ0\u0010\u0015\u001a\u00020\u00062!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00060\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R3\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010 R\u0018\u0010\'\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "p0",
        "(Landroid/view/View;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "ok",
        "call",
        "s0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "callback",
        "Lpy/f;",
        "d",
        "Lpy/f;",
        "viewBinding",
        "",
        "e",
        "Ljava/lang/String;",
        "noText",
        "f",
        "yesText",
        "g",
        "title",
        "h",
        "tips",
        "i",
        "a",
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


# static fields
.field public static final i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;


# instance fields
.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Lpy/f;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsnet/downloader/R$layout;->dialog_download_confirm:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->r0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->q0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V

    return-void
.end method

.method private final p0(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lpy/f;->a(Landroid/view/View;)Lpy/f;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lpy/f;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lpy/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lpy/f;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/transsnet/downloader/dialog/e;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/dialog/e;-><init>(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lpy/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/transsnet/downloader/dialog/f;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/dialog/f;-><init>(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->g:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lpy/f;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lpy/f;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lpy/f;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->h:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lpy/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_9

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_9
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lpy/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lpy/f;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lpy/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_b

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private static final q0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iget-object p0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final r0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iget-object p0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsnet/downloader/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    sget v0, Lcom/transsnet/downloader/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_text"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->e:Ljava/lang/String;

    sget v0, Lcom/transsnet/downloader/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes_text"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->f:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->g:Ljava/lang/String;

    const-string v0, "tips"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->h:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->p0(Landroid/view/View;)V

    return-void
.end method

.method public final s0(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method
