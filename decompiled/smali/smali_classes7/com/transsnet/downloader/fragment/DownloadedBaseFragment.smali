.class public abstract Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;
.super Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\nJO\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0003J\u0017\u0010%\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010)\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\'\u0010+\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008+\u0010*J\'\u0010,\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008,\u0010*J\'\u0010-\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u001f\u00101\u001a\u00020\u00082\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010/H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0011\u00104\u001a\u0004\u0018\u000103H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00088\u00107J\u000f\u00109\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00089\u0010\u0003R\u0016\u0010<\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R$\u0010F\u001a\u0004\u0018\u00010\'8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001d\u0010P\u001a\u0004\u0018\u00010K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\u001d\u0010U\u001a\u0004\u0018\u00010Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010M\u001a\u0004\u0008S\u0010TR\u001d\u0010Z\u001a\u0004\u0018\u00010V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010M\u001a\u0004\u0008X\u0010Y\u00a8\u0006["
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "<init>",
        "()V",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "bean",
        "",
        "position",
        "",
        "b1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;I)V",
        "item",
        "Z0",
        "",
        "path",
        "resourceId",
        "url",
        "name",
        "postId",
        "subjectId",
        "a1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "Lcom/transsnet/downloader/bean/MovieRecBean;",
        "movieRecBean",
        "g1",
        "(Lcom/transsnet/downloader/bean/MovieRecBean;)V",
        "V0",
        "c1",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initViewData",
        "initViewModel",
        "Lcom/transsnet/downloader/adapter/k;",
        "adapter",
        "o0",
        "(Lcom/transsnet/downloader/adapter/k;)V",
        "Landroid/view/View;",
        "view",
        "B0",
        "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V",
        "A0",
        "C0",
        "X0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V",
        "",
        "list",
        "D0",
        "(Ljava/util/List;)V",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "q0",
        "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "e1",
        "()I",
        "getScreenType",
        "h1",
        "d",
        "I",
        "movieRecPage",
        "e",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "mForYouViewModel",
        "f",
        "Landroid/view/View;",
        "R0",
        "()Landroid/view/View;",
        "f1",
        "(Landroid/view/View;)V",
        "mEmptyView",
        "",
        "g",
        "J",
        "lastRecLoadTime",
        "Lcom/transsion/room/api/IAudioApi;",
        "h",
        "Lkotlin/Lazy;",
        "getMAudioApi",
        "()Lcom/transsion/room/api/IAudioApi;",
        "mAudioApi",
        "Lcom/transsion/room/api/IFloatingApi;",
        "i",
        "getMFloatApi",
        "()Lcom/transsion/room/api/IFloatingApi;",
        "mFloatApi",
        "Ljj/a;",
        "j",
        "Q0",
        "()Ljj/a;",
        "audioDao",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private d:I

.field private e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

.field private f:Landroid/view/View;

.field private g:J

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    new-instance v0, Lcom/transsnet/downloader/fragment/e5;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/e5;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/fragment/f5;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/f5;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/fragment/g5;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/g5;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->j:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic E0()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->mAudioApi_delegate$lambda$0()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic F0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->U0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->W0()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic I0()Ljj/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->P0()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic J0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->T0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->Y0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->S0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic M0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Ljj/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->Q0()Ljj/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic N0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IAudioApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic O0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lcom/transsion/room/api/IFloatingApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->getMFloatApi()Lcom/transsion/room/api/IFloatingApi;

    move-result-object p0

    return-object p0
.end method

.method private static final P0()Ljj/a;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method private final Q0()Ljj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj/a;

    return-object v0
.end method

.method private static final S0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, v0}, Luh/b$a;->d(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->V0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final T0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/bean/MovieRecBean;

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->g1(Lcom/transsnet/downloader/bean/MovieRecBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final U0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->c1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final V0()V
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->S(II)V

    :cond_0
    return-void
.end method

.method private static final W0()Lcom/transsion/room/api/IFloatingApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private static final Y0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 3

    const-string v0, "/download/transfer"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Z0(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 11

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v5, v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    move-object v7, v1

    goto :goto_2

    :cond_4
    move-object v7, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v8, v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v9, v1

    goto :goto_3

    :cond_7
    move-object v9, v0

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->a1(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_4
    return-void
.end method

.method private final a1(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    move-object/from16 v0, p7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "id"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Lls/a;->a:Lls/a;

    invoke-virtual {v0}, Lls/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "ep"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "ops"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lcom/therouter/router/Navigator;->G(Ljava/lang/String;J)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->O()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMp4File$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMp4File$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    sget-object v8, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {v8, v7}, Lcom/transsnet/downloader/util/DownloadUtil;->l(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v6

    :cond_8
    const-string v1, "/post/detailVideo"

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v3, "page_from"

    const-string v7, "download_list"

    invoke-virtual {v1, v3, v7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v3, "video_load_more"

    invoke-virtual {v1, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "downloaded_shorts_list"

    invoke-virtual {v1, v6, v3}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v3, "prioritize_downloaded"

    invoke-virtual {v1, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v3, "is_from_downloaded"

    invoke-virtual {v1, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v1

    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "media_type"

    invoke-virtual {v1, v5, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    move-object v6, p1

    invoke-virtual {v3, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->l(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    const-string v5, "item_object"

    invoke-virtual {v1, v5, v3}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    move-result-object v1

    invoke-static {v1, v0, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void

    :cond_9
    move-object v6, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object v1, v4

    :goto_4
    instance-of v7, v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v7, :cond_b

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_5

    :cond_b
    move-object v1, v4

    :goto_5
    if-nez v1, :cond_c

    return-void

    :cond_c
    const-string v7, "/video/detail"

    invoke-static {v7}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v7

    const-string v8, "subject_type"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    const-string v7, "extra_local_path"

    move-object v8, p2

    invoke-virtual {v3, v7, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    const-string v7, "extra_url"

    move-object v8, p4

    invoke-virtual {v3, v7, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    const-string v7, "extra_resource_id"

    move-object v8, p3

    invoke-virtual {v3, v7, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    const-string v7, "extra_subject_id"

    invoke-virtual {v3, v7, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_name"

    move-object v7, p5

    invoke-virtual {v0, v3, p5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_post_id"

    move-object/from16 v7, p6

    invoke-virtual {v0, v3, v7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_completed"

    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_is_series"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_page_from"

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_height"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_width"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_position"

    move/from16 v5, p8

    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v3, "extra_parent_position"

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e1()I

    move-result v7

    invoke-virtual {v0, v3, v7}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v5

    goto :goto_6

    :cond_d
    const/4 v3, -0x1

    :goto_6
    const-string v5, "extra_series_position"

    invoke-virtual {v0, v5, v3}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0, v1, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final b1(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v2, "/download/series_list"

    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "Series"

    :cond_3
    const-string v4, "extra_name"

    invoke-virtual {v2, v4, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v2

    const-string v3, "extra_subject_id"

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v2, "extra_parent_position"

    invoke-virtual {p1, v2, p2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v0, v1, p2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final c1(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lpy/v;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lpy/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/transsnet/downloader/fragment/j5;

    invoke-direct {v0, p0, v1}, Lcom/transsnet/downloader/fragment/j5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private static final d1(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->R()Landroidx/lifecycle/b0;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method private final g1(Lcom/transsnet/downloader/bean/MovieRecBean;)V
    .locals 103

    move-object/from16 v1, p0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v4

    iget v3, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v9

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----------showFootMovieRec,empty  movieRecPage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lpy/v;

    const/4 v10, 0x0

    if-eqz v3, :cond_9

    iget-object v3, v3, Lpy/v;->f:Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v4

    const-string v3, "----------showFootMovieRec,empty  "

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lpy/v;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lpy/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v9

    :goto_2
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v0, v10

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/16 v10, 0x8

    :goto_4
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz p1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lpy/v;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lpy/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lpy/v;

    if-eqz v3, :cond_7

    iget-object v9, v3, Lpy/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    :cond_7
    invoke-virtual {v2, v9}, Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;->initBrowseReport(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lpy/v;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lpy/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0}, Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;->setData(Ljava/util/List;)V

    goto/16 :goto_c

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_a
    move-object v3, v9

    :goto_5
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_6

    :cond_c
    move-object v3, v9

    :goto_6
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isFroYouList()Z

    move-result v3

    if-ne v3, v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v4

    const-string v3, "----------2showFootMovieRec, data refresh  "

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isFroYouList()Z

    move-result v4

    if-eqz v4, :cond_d

    move v3, v10

    goto :goto_8

    :cond_d
    add-int/2addr v10, v0

    goto :goto_7

    :cond_e
    :goto_8
    if-ltz v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_c

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----------3showFootMovieRec, data add  size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v3, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v11, v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const v101, 0xffff

    const/16 v102, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, -0x20

    const/16 v100, -0x1

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    invoke-direct/range {v11 .. v102}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setFroYouList(Z)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p(Ljava/lang/Object;)V

    :cond_11
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_12
    move v0, v10

    :goto_9
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    :cond_13
    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :goto_a
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_15
    :goto_c
    return-void
.end method

.method private final getMAudioApi()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final getMFloatApi()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private static final mAudioApi_delegate$lambda$0()Lcom/transsion/room/api/IAudioApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IAudioApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method


# virtual methods
.method public A0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsnet/downloader/R$id;->iv_more:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public B0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFroYouList()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/16 v0, 0xe

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->b1(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->Z0(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public C0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    return-void
.end method

.method public D0(Ljava/util/List;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lpy/v;->f:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->D0(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->R()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->c1(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->h1()V

    :cond_5
    :goto_1
    instance-of p1, p0, Lcom/transsnet/downloader/fragment/DownloadEpisodesListFragment;

    if-nez p1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/bean/MovieRecBean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v2

    :goto_3
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    iget-wide v3, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->g:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x2bf20

    cmp-long p1, v3, v5

    if-gez p1, :cond_a

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    :cond_9
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    :goto_4
    iput-wide v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->g:J

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->V0()V

    :cond_b
    :goto_5
    return-void
.end method

.method protected final R0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method public X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/downloader/popup/PopupManager;

    invoke-direct {v0, p3, p1}, Lcom/transsnet/downloader/popup/PopupManager;-><init>(ILcom/transsion/baselib/db/download/DownloadBean;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/transsnet/downloader/popup/PopupManager;->J(Landroid/view/View;I)V

    new-instance p1, Lcom/transsnet/downloader/fragment/i5;

    invoke-direct {p1, p0}, Lcom/transsnet/downloader/fragment/i5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->C(Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;

    invoke-direct {p1, p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->B(Lcom/transsnet/downloader/adapter/u0$b;)V

    return-void
.end method

.method public e1()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected final f1(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->f:Landroid/view/View;

    return-void
.end method

.method public getScreenType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public h1()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lpy/v;->f:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lpy/v;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lpy/v;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public initViewData()V
    .locals 2

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->initViewData()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsnet/downloader/fragment/h5;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/h5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;->setRefreshClickCallback(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public initViewModel()V
    .locals 3

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->initViewModel()V

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsnet/downloader/fragment/c5;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/c5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->R()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/d5;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/d5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public o0(Lcom/transsnet/downloader/adapter/k;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsnet/downloader/R$id;->iv_more:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/v0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    return-void
.end method

.method public q0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    return-object v0
.end method
