.class public final synthetic Lcom/transsnet/downloader/fragment/d4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/d4;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/d4;->b:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    iput-object p3, p0, Lcom/transsnet/downloader/fragment/d4;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/d4;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/d4;->b:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/d4;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;->N0(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
