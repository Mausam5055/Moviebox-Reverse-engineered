.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/s;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/s;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->f0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)V

    return-void
.end method
