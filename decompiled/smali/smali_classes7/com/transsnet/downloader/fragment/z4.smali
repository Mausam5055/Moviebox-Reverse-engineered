.class public final synthetic Lcom/transsnet/downloader/fragment/z4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/z4;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/z4;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->b0(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
