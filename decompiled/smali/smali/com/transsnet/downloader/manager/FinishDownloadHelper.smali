.class public final Lcom/transsnet/downloader/manager/FinishDownloadHelper;
.super Llj/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Llj/a;-><init>()V

    const-string v0, "FinishDownloadHelper"

    iput-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsnet/downloader/manager/v;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/v;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/manager/w;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/w;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic h()Lcom/transsion/fissionapi/IFissionProvider;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->l()Lcom/transsion/fissionapi/IFissionProvider;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->o()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->n()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static final l()Lcom/transsion/fissionapi/IFissionProvider;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/fissionapi/IFissionProvider;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/fissionapi/IFissionProvider;

    return-object v0
.end method

.method private final m()Lcom/transsion/fissionapi/IFissionProvider;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/fissionapi/IFissionProvider;

    return-object v0
.end method

.method private final n()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private static final o()Lqy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private final p(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHORTS_DIALOG_SHOWN_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/blankj/utilcode/util/c;->l()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "getSupportFragmentManager(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "DownloadedShortsDialog"

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v5, v3, Landroidx/fragment/app/DialogFragment;

    if-eqz v5, :cond_3

    check-cast v3, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v3, Lcom/transsnet/downloader/fragment/DownloadedShortsDialog;->e:Lcom/transsnet/downloader/fragment/DownloadedShortsDialog$a;

    invoke-virtual {v3, v0}, Lcom/transsnet/downloader/fragment/DownloadedShortsDialog$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/fragment/DownloadedShortsDialog;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string v2, ""

    const-string v3, "short_download_view"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/baselib/helper/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 6

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Llj/a;->e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->m()Lcom/transsion/fissionapi/IFissionProvider;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/transsion/fissionapi/IFissionProvider;->enable()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/FinishDownloadHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_1
    return-void
.end method
