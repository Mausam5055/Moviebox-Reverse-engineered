.class public final Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->b1()V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(IIIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/u0$b$a;->a(Lcom/transsnet/downloader/adapter/u0$b;IIIZ)V

    return-void
.end method
