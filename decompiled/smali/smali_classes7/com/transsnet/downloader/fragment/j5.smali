.class public final synthetic Lcom/transsnet/downloader/fragment/j5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/j5;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    iput p2, p0, Lcom/transsnet/downloader/fragment/j5;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/j5;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    iget v1, p0, Lcom/transsnet/downloader/fragment/j5;->b:I

    invoke-static {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V

    return-void
.end method
