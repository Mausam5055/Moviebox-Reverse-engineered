.class public final synthetic Lcom/transsnet/downloader/fragment/u1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/u1;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/u1;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->I0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
