.class public final synthetic Lcom/transsnet/downloader/adapter/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

.field public final synthetic b:Ln6/a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ln6/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/b0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/b0;->b:Ln6/a;

    iput-object p3, p0, Lcom/transsnet/downloader/adapter/b0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/b0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    iget-object v1, p0, Lcom/transsnet/downloader/adapter/b0;->b:Ln6/a;

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/b0;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->q(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ln6/a;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
