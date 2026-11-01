.class public final synthetic Lcom/transsnet/downloader/ugc/dialog/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/dialog/g;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/dialog/g;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/dialog/g;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iget-object v1, p0, Lcom/transsnet/downloader/ugc/dialog/g;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->E0(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Ljava/util/Set;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
