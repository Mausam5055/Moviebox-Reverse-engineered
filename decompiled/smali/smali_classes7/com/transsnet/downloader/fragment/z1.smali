.class public final synthetic Lcom/transsnet/downloader/fragment/z1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/g;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/z1;->a:Lcom/transsnet/downloader/adapter/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/z1;->a:Lcom/transsnet/downloader/adapter/g;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->N0(Lcom/transsnet/downloader/adapter/g;)V

    return-void
.end method
