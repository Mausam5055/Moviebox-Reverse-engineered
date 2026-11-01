.class public final synthetic Lcom/transsnet/downloader/adapter/v;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsnet/downloader/adapter/DownloadedHolder;


# direct methods
.method public synthetic constructor <init>(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/adapter/v;->a:I

    iput-wide p2, p0, Lcom/transsnet/downloader/adapter/v;->b:J

    iput p4, p0, Lcom/transsnet/downloader/adapter/v;->c:I

    iput-object p5, p0, Lcom/transsnet/downloader/adapter/v;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/transsnet/downloader/adapter/v;->a:I

    iget-wide v1, p0, Lcom/transsnet/downloader/adapter/v;->b:J

    iget v3, p0, Lcom/transsnet/downloader/adapter/v;->c:I

    iget-object v4, p0, Lcom/transsnet/downloader/adapter/v;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->r(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
