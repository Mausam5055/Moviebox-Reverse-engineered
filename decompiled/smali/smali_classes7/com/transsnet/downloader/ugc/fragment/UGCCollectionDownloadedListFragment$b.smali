.class public final Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->o1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V

    :cond_0
    return-void
.end method

.method public b(IIIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/u0$b$a;->a(Lcom/transsnet/downloader/adapter/u0$b;IIIZ)V

    return-void
.end method
