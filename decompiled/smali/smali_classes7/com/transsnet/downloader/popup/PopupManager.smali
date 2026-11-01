.class public final Lcom/transsnet/downloader/popup/PopupManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/popup/PopupManager$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsnet/downloader/popup/PopupManager$a;


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsnet/downloader/adapter/u0$b;

.field private e:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/popup/PopupManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/popup/PopupManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/popup/PopupManager;->f:Lcom/transsnet/downloader/popup/PopupManager$a;

    return-void
.end method

.method public constructor <init>(ILcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "downloadBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    iput-object p2, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance p1, Lcom/transsnet/downloader/popup/e;

    invoke-direct {p1}, Lcom/transsnet/downloader/popup/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final A(Landroid/content/Context;Lmy/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V
    .locals 10

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;ZLandroid/content/Context;Lmy/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final D(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v3

    const-string v4, "delete"

    const-string v5, "feedback"

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    new-instance v3, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v7

    sget v8, Lcom/transsnet/downloader/R$string;->help:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v7

    sget v8, Lcom/transsnet/downloader/R$string;->download_dialog_audio_playlist:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "audio_add"

    invoke-direct {v5, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v8

    sget v9, Lcom/transsnet/downloader/R$string;->delete:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lkotlin/Pair;

    aput-object v3, v4, v1

    aput-object v5, v4, v6

    aput-object v7, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v3}, Lsm/f$a;->a()Lsm/f;

    move-result-object v3

    const/4 v7, 0x0

    const-string v8, "sb_show_save_to"

    invoke-static {v3, v8, v1, v0, v7}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    :cond_1
    new-instance v3, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v7

    sget v8, Lcom/transsnet/downloader/R$string;->help:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v7

    sget v8, Lcom/transsnet/downloader/R$string;->delete:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v0, v0, [Lkotlin/Pair;

    aput-object v3, v0, v1

    aput-object v5, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v3, Lak/o;->a:Lak/o;

    invoke-virtual {v3}, Lak/o;->i()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcom/transsnet/downloader/R$string;->download_transfer_tips:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "transfer_file_2_mb"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    new-instance v3, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcom/transsnet/downloader/R$string;->download_save_to_my_phone:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "transfer_file"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v3, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    sget-object v1, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v1}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const-string v5, "save_local/more_dialog"

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/baselib/helper/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    sget-object v1, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->h:Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/popup/c;

    invoke-direct {v1, p0, p1, v2}, Lcom/transsnet/downloader/popup/c;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->t0(Lkotlin/jvm/functions/Function3;)V

    const-string v1, "more_Dialog"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final E(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    const-string p3, "<unused var>"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "transfer_file_2_mb"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->Q()V

    goto :goto_0

    :sswitch_1
    const-string p1, "audio_add"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->n()V

    goto :goto_0

    :sswitch_2
    const-string p1, "feedback"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->K()V

    goto :goto_0

    :sswitch_3
    const-string p2, "delete"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->v(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_4
    const-string p3, "transfer_file"

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager;->z(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    sget-object p1, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {p1}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const-string v2, "save_local/more_dialog"

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/baselib/helper/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7810ceb0 -> :sswitch_4
        -0x4f997a55 -> :sswitch_3
        -0xb6a147b -> :sswitch_2
        0xb3c68b8 -> :sswitch_1
        0x40be0651 -> :sswitch_0
    .end sparse-switch
.end method

.method private final F(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->h:Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;

    new-instance v1, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsnet/downloader/R$string;->help:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feedback"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsnet/downloader/R$string;->delete:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/popup/f;

    invoke-direct {v1, p0, p1}, Lcom/transsnet/downloader/popup/f;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->t0(Lkotlin/jvm/functions/Function3;)V

    const-string v1, "more_Dialog"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final G(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    const-string p4, "<unused var>"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->v(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->K()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final H(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/transsnet/downloader/util/DocumentsUtils;->a:Lcom/transsnet/downloader/util/DocumentsUtils;

    new-instance v1, Lcom/transsnet/downloader/popup/i;

    invoke-direct {v1, p1, p2}, Lcom/transsnet/downloader/popup/i;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsnet/downloader/util/DocumentsUtils;->k(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static final I(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 6

    if-eqz p2, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStoragePermissionGranted------- uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SaveVideo"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsnet/downloader/util/DocumentsUtils;->a:Lcom/transsnet/downloader/util/DocumentsUtils;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p2}, Lcom/transsnet/downloader/util/DocumentsUtils;->m(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final K()V
    .locals 3

    const-string v0, "/profile/user_center_labels_feedback"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "feedback_from_page"

    const-string v2, "SUBJECT_DOWNLOAD"

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subject_id"

    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    return-void
.end method

.method public static synthetic M(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->L(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final N(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 8

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Llj/b;->a:Llj/b$a;

    invoke-virtual {v0}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Llj/b;->a:Llj/b$a;

    invoke-virtual {v0}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    sget-object v1, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;->t:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog$a;

    invoke-virtual {v1, v0, p2}, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog$a;->a(Ljava/lang/String;Z)Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/popup/g;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsnet/downloader/popup/g;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;->I0(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/transsnet/downloader/popup/h;

    invoke-direct {p2}, Lcom/transsnet/downloader/popup/h;-><init>()V

    invoke-virtual {v0, p2}, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;->H0(Lkotlin/jvm/functions/Function0;)V

    const-string p2, "save_loading_Dialog"

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final O(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lmy/b;)Lkotlin/Unit;
    .locals 6

    const-string v0, "pathInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    const-string v1, "downloadpage"

    const-string v2, "save_local"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/baselib/helper/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager;->A(Landroid/content/Context;Lmy/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final P()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final Q()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/popup/PopupManager;->r(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/popup/PopupManager;->E(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager;->I(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->w(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/popup/PopupManager;->G(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/popup/PopupManager;->P()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->t(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/popup/PopupManager;->o()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->u(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lmy/b;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/popup/PopupManager;->O(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lmy/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->q(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/popup/PopupManager;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->y(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final n()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v3, v1

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v5

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v6

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v17

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v20

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v22

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v21

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v2, v1

    const v23, 0x11f80

    const/16 v24, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v24}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsnet/downloader/popup/PopupManager$audioAddPlayList$1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Lcom/transsnet/downloader/popup/PopupManager$audioAddPlayList$1;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final o()Lcom/transsion/room/api/IAudioApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IAudioApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final p()Lkotlin/Pair;
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-string v2, ""

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    invoke-virtual {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v2

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmy/f;

    invoke-virtual {v4}, Lmy/f;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lmy/f;->b()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :cond_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStoragePermissionGranted\uff0c1  sdRootPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "SaveVideo"

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    sget-object v4, Lcom/transsnet/downloader/util/DocumentsUtils;->a:Lcom/transsnet/downloader/util/DocumentsUtils;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    const-string v6, "getApp(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1}, Lcom/transsnet/downloader/util/DocumentsUtils;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " check other permission, showOpenDocumentTree = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "SaveVideo"

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_2

    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final q(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->p()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/transsnet/downloader/popup/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/d;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    invoke-direct {p0, v0, v1}, Lcom/transsnet/downloader/popup/PopupManager;->H(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->N(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method private static final r(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->N(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final s()V
    .locals 4

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$string;->download_delete_success:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lko/l0;->a:Lko/l0;

    invoke-virtual {v1, v0}, Lko/l0;->y(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/transsnet/downloader/popup/k;

    invoke-direct {v3, p0}, Lcom/transsnet/downloader/popup/k;-><init>(Lcom/transsnet/downloader/popup/PopupManager;)V

    invoke-interface {v0, v2, v3}, Lcom/transsnet/downloader/manager/g;->z(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/transsnet/downloader/popup/l;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/popup/l;-><init>(Lcom/transsnet/downloader/popup/PopupManager;)V

    invoke-interface {v0, v1, v2}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->x()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/room/api/IAudioApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/room/api/IFloatingApi;->hide()V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->x()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->stop()V

    :cond_4
    :goto_1
    return-void
.end method

.method private static final t(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 2

    sget-object p1, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->download_delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    :cond_0
    iget-object p0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lko/l0;->a:Lko/l0;

    invoke-virtual {p1, p0}, Lko/l0;->y(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final u(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 2

    sget-object p1, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->download_delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    :cond_0
    iget-object p0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lko/l0;->a:Lko/l0;

    invoke-virtual {p1, p0}, Lko/l0;->y(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final v(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/transsion/lib/push/R$string;->app_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_albums:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsnet/downloader/R$string;->sdcard_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    sget v2, Lcom/transsnet/downloader/R$string;->cancel:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsnet/downloader/R$string;->delete:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/transsnet/downloader/R$string;->download_delete_tips:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/popup/j;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/popup/j;-><init>(Lcom/transsnet/downloader/popup/PopupManager;)V

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->s0(Lkotlin/jvm/functions/Function1;)V

    const-string v1, "confirm_Dialog"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final w(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->s()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final x()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final y(Z)Ljava/lang/String;
    .locals 3

    const-string v0, "\n"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->download_move_successful:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$string;->download_save_subtitle_tips:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->download_save_successful:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$string;->download_save_subtitle_tips:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/util/a0;->a:Lcom/transsnet/downloader/util/a0;

    const-string v1, "save_local/more_dialog"

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/transsnet/downloader/util/a0;->a(Landroid/content/Context;Lcom/transsnet/downloader/popup/PopupManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    return-void
.end method

.method public final C(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final J(Landroid/view/View;I)V
    .locals 2

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "getContext(...)"

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->D(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->F(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public final L(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->N(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/popup/PopupManager$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager$b;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->y()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->q(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method
