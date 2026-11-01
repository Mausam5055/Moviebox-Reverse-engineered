.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->j0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "TAB_ALL"

    :cond_1
    sget-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;->m:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->j0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
