.class public final synthetic Lcom/transsnet/downloader/adapter/z;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/DownloadedHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/z;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/z;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-static {v0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->o(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
