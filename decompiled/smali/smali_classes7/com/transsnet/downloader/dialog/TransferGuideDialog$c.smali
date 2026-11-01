.class public final Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/dialog/TransferGuideDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lpy/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/o;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->r0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->s0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lpy/o;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lpy/o;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    sget v2, Lcom/transsnet/downloader/R$string;->download_tab_transfer_tips_get:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lpy/o;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lpy/o;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    sget v2, Lcom/transsnet/downloader/R$string;->download_tab_transfer_tips_next:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->q0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)Lpy/o;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lpy/o;->d:Lcom/tn/lib/view/indicator/CircleIndicator;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$c;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->s0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)[Ljava/lang/Integer;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/tn/lib/view/indicator/BaseIndicator;->onPageSelected(I)V

    :cond_3
    return-void
.end method
