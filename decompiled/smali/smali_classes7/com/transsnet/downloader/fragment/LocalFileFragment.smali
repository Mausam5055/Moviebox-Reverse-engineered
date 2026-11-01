.class public final Lcom/transsnet/downloader/fragment/LocalFileFragment;
.super Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/LocalFileFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0007*\u0001\u001a\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000bR\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/LocalFileFragment;",
        "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;",
        "<init>",
        "()V",
        "",
        "initViewData",
        "initViewModel",
        "onResume",
        "onDestroy",
        "",
        "getEmptyDescText",
        "()Ljava/lang/String;",
        "",
        "T0",
        "()Z",
        "initListener",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "getPageName",
        "Lcom/transsnet/downloader/manager/g;",
        "k",
        "Lkotlin/Lazy;",
        "p1",
        "()Lcom/transsnet/downloader/manager/g;",
        "downloadManager",
        "com/transsnet/downloader/fragment/LocalFileFragment$b",
        "l",
        "Lcom/transsnet/downloader/fragment/LocalFileFragment$b;",
        "downloadListener",
        "m",
        "a",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final m:Lcom/transsnet/downloader/fragment/LocalFileFragment$a;


# instance fields
.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/fragment/LocalFileFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/LocalFileFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->m:Lcom/transsnet/downloader/fragment/LocalFileFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;-><init>()V

    new-instance v0, Lcom/transsnet/downloader/fragment/w6;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/w6;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->k:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;-><init>(Lcom/transsnet/downloader/fragment/LocalFileFragment;)V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    return-void
.end method

.method public static synthetic n1()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->o1()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private static final o1()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final p1()Lcom/transsnet/downloader/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method


# virtual methods
.method public T0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$string;->download_no_local_file_tips_2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "file_manager_tab_all"

    return-object v0
.end method

.method public initListener()V
    .locals 2

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->initListener()V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->p1()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->e(Llj/m0;)V

    return-void
.end method

.method public initViewData()V
    .locals 2

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->initViewData()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/s;->d:Lcom/tn/lib/view/TitleLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr6/f;->z(Z)V

    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 6

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->initViewModel()V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsnet/downloader/fragment/LocalFileFragment$initViewModel$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsnet/downloader/fragment/LocalFileFragment$initViewModel$1;-><init>(Lcom/transsnet/downloader/fragment/LocalFileFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v2}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v3, "permission"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "page_from"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->p1()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->x(Llj/m0;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    return-void
.end method
