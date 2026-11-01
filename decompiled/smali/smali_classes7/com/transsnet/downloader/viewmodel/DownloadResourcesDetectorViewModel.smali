.class public final Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;
    }
.end annotation


# static fields
.field public static final x:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lkotlinx/coroutines/n0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/b0;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/b0;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/b0;

.field private final q:Landroidx/lifecycle/b0;

.field private final r:Landroidx/lifecycle/b0;

.field private final s:Landroidx/lifecycle/b0;

.field private final t:Landroidx/lifecycle/b0;

.field private final u:Landroidx/lifecycle/b0;

.field private final v:Landroidx/lifecycle/b0;

.field private final w:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->x:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsnet/downloader/viewmodel/j;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->a:Lkotlin/Lazy;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->e:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->f:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->g:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->h:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->i:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->j:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->k:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->l:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->m:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->n:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->o:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->r:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->t:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->u:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->v:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->w:Landroidx/lifecycle/b0;

    return-void
.end method

.method private final C()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private static final J()Lqy/a;
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

.method public static synthetic b()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->J()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q()V

    return-void
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->C()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIIILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    const-string v4, "1"

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    const/16 v5, 0x14

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    move/from16 v6, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move v8, v7

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move v9, v7

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    move v10, v7

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v7, p10

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v11, "download_last_resolution"

    invoke-virtual {v0, v11, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_9

    :cond_9
    move/from16 v0, p11

    :goto_9
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v4

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v8

    move/from16 p10, v9

    move/from16 p11, v10

    move/from16 p12, v7

    move/from16 p13, v0

    invoke-virtual/range {p2 .. p13}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->j(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    return-void
.end method

.method private final q()V
    .locals 20

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadReDetector"

    const-string v2, "--- getPathInfo"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    invoke-virtual {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a()Ljava/util/List;

    move-result-object v8

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    sget-object v1, Llj/b;->a:Llj/b$a;

    invoke-virtual {v1}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->t()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- savedPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DownloadReDetector"

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmy/b;

    invoke-virtual {v1}, Lmy/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lmy/b;->g(Z)V

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()J

    move-result-wide v4

    sget-object v1, Llj/b;->a:Llj/b$a;

    invoke-virtual {v1}, Llj/b$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v14, 0x3

    if-nez v11, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    move v0, v14

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    new-instance v15, Lmy/b;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    sget v11, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_moviebox_folder:I

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getString(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v11, ""

    move-object v9, v15

    move-object v3, v13

    move/from16 v13, v16

    move-object/from16 v19, v15

    move-wide v14, v4

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Lmy/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    if-ne v0, v2, :cond_5

    move v10, v2

    move-object/from16 v9, v19

    goto :goto_3

    :cond_5
    move-object/from16 v9, v19

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v9, v10}, Lmy/b;->g(Z)V

    new-instance v10, Lmy/b;

    invoke-virtual {v1}, Llj/b$a;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v11, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_albums:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x3

    const/16 v18, 0x2

    move-object v11, v10

    move-object v12, v6

    move-wide/from16 v16, v4

    invoke-direct/range {v11 .. v18}, Lmy/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v10, v2}, Lmy/b;->g(Z)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {v1, v7}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private final w(Ljava/lang/String;)V
    .locals 11

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- getDownloadSavePathInfo, savedRootPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadReDetector"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()J

    move-result-wide v6

    sget-object v1, Llj/b;->a:Llj/b$a;

    invoke-virtual {v1}, Llj/b$a;->e()Ljava/lang/String;

    invoke-virtual {v1}, Llj/b$a;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lmy/b;

    invoke-virtual {v1}, Llj/b$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_albums:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v8, 0x2

    move-object v1, v10

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Lmy/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v10, v1}, Lmy/b;->g(Z)V

    sget-object v1, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    invoke-virtual {v1}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmy/b;

    invoke-virtual {v3}, Lmy/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Lmy/b;->g(Z)V

    :cond_1
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->h:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->i:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final B()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final D()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->t:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final E()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->v:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final F()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final G()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->r:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final H()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->u:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final K(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final L(Lmy/c;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lmy/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmy/c;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmy/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v2

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v8, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$favorite$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$favorite$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;ZLcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 p1, 0x0

    const/4 v7, 0x0

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->n:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->k:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIII)V
    .locals 16

    const-string v0, "nextPage"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1;

    const/4 v14, 0x0

    move-object v1, v15

    move/from16 v2, p11

    move-object/from16 v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p3

    move-object/from16 v7, p0

    move/from16 v9, p5

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v14}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1;-><init>(ILjava/lang/String;IIILcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;IIIILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v15

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 7

    const-string v0, "savedRootPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->b:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadSavePathInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadSavePathInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->m:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->o:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final r()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourceAllLangInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourceAllLangInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourcesSeasonInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourcesSeasonInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final v()V
    .locals 6

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->b:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getSDCardPathInfo$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getSDCardPathInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final x()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->j:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->l:Landroidx/lifecycle/b0;

    return-object v0
.end method
