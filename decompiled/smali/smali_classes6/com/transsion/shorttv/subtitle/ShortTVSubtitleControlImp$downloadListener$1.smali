.class public final Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;-><init>(Landroidx/fragment/app/FragmentActivity;Lms/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljs/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->b(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    return-void
.end method

.method private static final b(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isSetImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object p1

    invoke-virtual {p1}, Ljs/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfs/b;->a:Lfs/b$a;

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_subtitle_download_failed:I

    invoke-virtual {p0, p1}, Lfs/b$a;->d(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    const-string v0, "stDownloadTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->l(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1$onComplete$1;

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1$onComplete$1;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    const-string p1, "stDownloadTable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dbBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->l(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    new-instance v1, Lcom/transsion/shorttv/subtitle/d;

    invoke-direct {v1, p2, v0}, Lcom/transsion/shorttv/subtitle/d;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 8

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object v1

    invoke-virtual {v1}, Ljs/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->r(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> -------- onSaveDownload\uff0c\u4e0d\u662f\u5f53\u524d\u89c6\u9891\uff0c\u4e0d\u505a\u5904\u7406"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->l(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1;

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-direct {v5, v0, p1, v1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method
