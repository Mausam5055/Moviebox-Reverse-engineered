.class public final Lcom/transsnet/downloader/core/DownloadTaskImpl$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/core/task/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/core/DownloadTaskImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$b;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$b;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->p(Lcom/transsnet/downloader/core/DownloadTaskImpl;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
