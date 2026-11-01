.class public final Lcom/transsnet/downloader/core/DownloadTaskImpl2$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/core/task/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl2;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$b;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$b;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1, p4}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->q(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
