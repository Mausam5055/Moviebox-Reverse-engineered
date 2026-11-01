.class public final Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsnet/downloader/R$layout;->dialog_download_permission_tips:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;->r0(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;->q0(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;Landroid/view/View;)V

    return-void
.end method

.method private final p0(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lpy/i;->a(Landroid/view/View;)Lpy/i;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lpy/i;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsnet/downloader/dialog/m;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/dialog/m;-><init>(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lpy/i;->d:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/transsnet/downloader/dialog/n;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/dialog/n;-><init>(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final q0(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static final r0(Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/a0;->x()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/baseui/R$style;->NormalDialogTheme:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadPermissionDialog;->p0(Landroid/view/View;)V

    return-void
.end method
