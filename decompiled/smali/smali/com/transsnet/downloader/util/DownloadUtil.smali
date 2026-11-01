.class public final Lcom/transsnet/downloader/util/DownloadUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/DownloadUtil;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/DownloadUtil;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    new-instance v0, Lcom/transsnet/downloader/util/m;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/m;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/util/n;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/n;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->c:Lkotlin/Lazy;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic K(Lcom/transsnet/downloader/util/DownloadUtil;Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v13, v0

    goto :goto_2

    :cond_2
    move/from16 v13, p10

    :goto_2
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/transsnet/downloader/util/DownloadUtil;->J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final L(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final M(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "newPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8f6c\u5b58\u5230\u76f8\u518c newPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "resource_save"

    invoke-virtual {p0, v1, p1, v0}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final N(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final O(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "newPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8f6c\u5b58\u5230sdcard newPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "resource_save"

    invoke-virtual {p0, v1, p1, v0}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final P(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v0, p4

    move-object/from16 v2, p9

    instance-of v3, v2, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;

    iget v4, v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    move-object/from16 v9, p0

    :goto_0
    move-object v10, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;

    move-object/from16 v9, p0

    invoke-direct {v3, v9, v2}, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;-><init>(Lcom/transsnet/downloader/util/DownloadUtil;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v2, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v11

    iget v3, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    const/4 v12, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v12, :cond_1

    iget-object v0, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string v13, "\uff0c new path = "

    const-string v14, " old path = "

    const-string v15, "resource_save"

    if-eqz p8, :cond_b

    const-string v2, "content"

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v8, v2, v7, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lk1/a;->g(Landroid/content/Context;Landroid/net/Uri;)Lk1/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lk1/a;->d()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DocumentFile ,\u5220\u9664\u7ed3\u679c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2, v12}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "getApp(...)"

    const/16 v5, 0x1d

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    goto :goto_4

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    sget-object v0, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v8}, Lcom/transsnet/downloader/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_4

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    sget-object v0, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v8}, Lcom/transsnet/downloader/y;->e(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_7
    :goto_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f6c\u5b58\u5230\u6210\u529f ,\u5220\u9664\u7ed3\u679c = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", videoPath = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0, v12}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_8
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v2, "\u8f6c\u5b58\u5230\u6210\u529f ,\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u5220\u9664"

    invoke-virtual {v0, v15, v2, v12}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v6, 0x4

    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move v12, v7

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    move v12, v7

    move-object/from16 v0, p7

    :goto_6
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8f6c\u5b58\u5230\u6210\u529f, resourceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v15, v2, v3}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    iput-object v1, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->L$0:Ljava/lang/Object;

    iput v3, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    invoke-virtual {v0, v1, v10}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_a

    return-object v11

    :cond_a
    move-object v0, v1

    :goto_7
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/util/DownloadUtil;->p()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsnet/downloader/manager/g;->q()V

    goto :goto_8

    :cond_b
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save to\u6210\u529f, resourceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v15, v1, v2}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->O(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Llj/n0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/util/DownloadUtil;->n()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/util/DownloadUtil;->m()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/DownloadUtil;->L(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->M(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/DownloadUtil;->N(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsnet/downloader/util/DownloadUtil;)Llj/n0;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/util/DownloadUtil;->q()Llj/n0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/util/DownloadUtil;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/transsnet/downloader/util/DownloadUtil;->Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final m()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private static final n()Llj/n0;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->q1()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method private final p()Lcom/transsnet/downloader/manager/g;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private final q()Llj/n0;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/n0;

    return-object v0
.end method

.method private final u(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlin/io/FilesKt;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lkotlin/io/FilesKt;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v5

    :catchall_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic y(Lcom/transsnet/downloader/util/DownloadUtil;Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->x(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final z(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 95

    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v92, ""

    if-nez v0, :cond_0

    move-object/from16 v1, v92

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object/from16 v2, v92

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v3, v92

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v93, v0

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v93, v92

    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v5

    const v90, 0xffff

    const/16 v91, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

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

    const/16 v88, -0x20

    const/16 v89, -0x1

    move-object v0, v4

    move-object/from16 v94, v4

    move-object/from16 v4, v93

    invoke-direct/range {v0 .. v91}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object/from16 v1, v94

    goto :goto_7

    :cond_6
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getGenre()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_7
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    move-object v2, v0

    :goto_8
    if-nez v2, :cond_9

    move-object/from16 v2, v92

    :cond_9
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCountryName()Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_e
    move-object v2, v0

    :goto_9
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_f
    move-object v2, v0

    :goto_a
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    if-eqz p2, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b

    :cond_10
    move-object v2, v0

    :goto_b
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_11
    move-object v2, v0

    :goto_c
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_12
    move-object v2, v0

    :goto_d
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setAverageHueLight(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getUploadBy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move-object/from16 v2, v92

    :cond_13
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getEpse()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_e

    :cond_14
    move v2, v3

    :goto_e
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_15
    invoke-virtual {v1, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    if-nez p4, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_16
    move-object/from16 v2, p4

    :goto_f
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setGroupId(Ljava/lang/String;)V

    if-eqz p8, :cond_18

    invoke-interface/range {p8 .. p8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_17

    goto :goto_10

    :cond_17
    move-object/from16 v2, p8

    goto :goto_11

    :cond_18
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_11
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getSourceUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    move-object/from16 v2, v92

    :cond_19
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRequireMemberType(Ljava/lang/Integer;)V

    sget-object v2, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectDurationSeconds(Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getTotalEpisode()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_12

    :cond_1a
    move v2, v3

    :goto_12
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v2

    if-le v0, v2, :cond_1c

    invoke-virtual {v1, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setMultiresolution(I)V

    :cond_1c
    return-object v1
.end method


# virtual methods
.method public final A(Ljava/util/List;II)Lkotlin/Pair;
    .locals 11

    const-string v0, "seasons"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsnet/downloader/util/DownloadUtil$initGetPositions$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/DownloadUtil$initGetPositions$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    const-string v4, " "

    const-string v5, "DownloadRes"

    const/4 v6, 0x0

    if-nez p3, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getResolutions()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v8, v6

    check-cast v8, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v8

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v10

    if-ge v8, v10, :cond_4

    move-object v6, v9

    move v8, v10

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    :goto_1
    check-cast v6, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    if-eqz v6, :cond_0

    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initGetPositions,\u5206\u8fa8\u73870  it.epNum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5, v4, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v3

    if-ge v3, p2, :cond_5

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v2

    if-gt v2, p2, :cond_0

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getResolutions()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getResolution()I

    move-result v9

    if-ne v9, p3, :cond_7

    move-object v6, v8

    :cond_8
    check-cast v6, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    if-eqz v6, :cond_0

    sget-object v7, Llg/a;->a:Llg/a$a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initGetPositions,\u5206\u8fa8\u73870  resolution:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5, v4, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v3

    if-ge v3, p2, :cond_9

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v2

    if-gt v2, p2, :cond_0

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v2

    goto :goto_2

    :cond_a
    add-int/2addr v0, v3

    if-ge v1, v0, :cond_b

    move v1, v0

    :cond_b
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final B(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/util/DownloadUtil$initSetDownloadInfoAndRanges$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsnet/downloader/util/DownloadUtil$initSetDownloadInfoAndRanges$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public final C(Lcom/transsion/baselib/db/download/DownloadBean;)Z
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesCollection()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isCheck()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final D()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final E(Lcom/transsion/baselib/db/download/DownloadBean;)Z
    .locals 5

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v3, "download_error_opt_off"

    invoke-virtual {v0, v3, v1}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v2

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadException;->getCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPreErrorCode()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCNDError()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->is4xxError()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRequestNewSourceCount()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public final F(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final G(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    move-object/from16 v0, p1

    const-string v1, "item"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "VIDEO"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Video;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_e

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v7, v3

    goto :goto_7

    :cond_7
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    :goto_6
    const-string v3, ""

    goto :goto_4

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :cond_a
    move-object v6, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl(Z)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getSize()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v11, v4

    goto :goto_8

    :cond_b
    move-wide v11, v9

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v28

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v9, v4

    :cond_c
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v35, v4

    goto :goto_9

    :cond_d
    move-object/from16 v35, v2

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    goto :goto_a

    :cond_e
    move-object/from16 v38, v2

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    :cond_f
    move-object/from16 v43, v2

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v31, v2

    goto :goto_b

    :cond_10
    move/from16 v31, v3

    :goto_b
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v32, v2

    goto :goto_c

    :cond_11
    move/from16 v32, v3

    :goto_c
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_d

    :cond_12
    move v1, v3

    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v65

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl(Z)Ljava/lang/String;

    move-result-object v56

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v48

    new-instance v10, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v4, v10

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const v94, 0xffff

    const/16 v95, 0x0

    const/4 v11, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x9

    const-wide/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x1

    const/16 v42, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x1

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

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

    const v92, -0x4990b3c0

    const v93, -0x211046

    const-string v12, ""

    move-object v2, v10

    move-object/from16 v10, v28

    move/from16 v28, v1

    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setOriginData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_e
    return-object v2
.end method

.method public final H(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 3

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setProgress(J)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(ZLcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesCollection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeriesAllCheck(Z)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v10, p0

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v2, p8

    move-object/from16 v14, p9

    move-object/from16 v3, p11

    instance-of v4, v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;

    iget v5, v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    :goto_0
    move-object v15, v4

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;

    invoke-direct {v4, v10, v3}, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;-><init>(Lcom/transsnet/downloader/util/DownloadUtil;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v3, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v4, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    const/16 v16, 0x0

    const/4 v5, 0x2

    const-string v7, "resource_save"

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v0, 0x3

    if-eq v4, v0, :cond_2

    const/4 v0, 0x4

    if-ne v4, v0, :cond_1

    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    move-object v0, v10

    move-object v10, v1

    move-object v1, v7

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v0

    goto/16 :goto_8

    :cond_3
    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v1

    move-object v1, v7

    goto/16 :goto_7

    :cond_4
    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    goto/16 :goto_5

    :cond_5
    const/16 v18, 0x4

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    move-object v0, v10

    goto/16 :goto_b

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    :goto_2
    move-object v4, v3

    goto :goto_3

    :cond_8
    const-string v3, "\u4e0b\u8f7d\u76ee\u5f55\u8f6c\u5b58"

    goto :goto_2

    :goto_3
    const-string v3, ", targetRootPath = "

    const-string v5, " targetRootPathType:"

    move-object/from16 v20, v8

    const-string v8, ", beforeRootPath = "

    const-string v0, " \uff0c\u8f6c\u5b58\u5230\u76f8\u518c \u6210\u529f beforeRootPathType:"

    const-string v6, ""

    move-object/from16 v21, v5

    const/4 v5, 0x2

    if-eq v13, v5, :cond_f

    move-object/from16 p11, v7

    const/4 v7, 0x3

    if-eq v13, v7, :cond_9

    :goto_4
    move-object v0, v10

    goto/16 :goto_a

    :cond_9
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v6, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    new-instance v1, Lcom/transsnet/downloader/util/o;

    invoke-direct {v1, v2}, Lcom/transsnet/downloader/util/o;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/transsnet/downloader/util/p;

    invoke-direct {v2, v7}, Lcom/transsnet/downloader/util/p;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v17, v2

    move-object v2, v6

    move-object v6, v3

    move-object/from16 v3, p1

    move-object v10, v4

    move-object/from16 v4, v19

    move-object/from16 v14, v21

    move-object/from16 v5, p4

    move-object/from16 v21, v15

    move-object v15, v6

    move-object v6, v1

    move-object/from16 v1, p11

    move-object/from16 v22, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lcom/transsnet/downloader/y;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object/from16 v14, p9

    move-object/from16 v15, v21

    iput-object v14, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    iput v3, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v11, v20

    move/from16 v8, p10

    move-object v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/transsnet/downloader/util/DownloadUtil;->Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_a

    return-object v11

    :cond_a
    :goto_5
    if-eqz v14, :cond_b

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v14, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    goto/16 :goto_a

    :cond_c
    move-object/from16 v14, p9

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    iput-object v14, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    iput-object v10, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move/from16 v0, p2

    move-object/from16 v5, p3

    move-object v4, v10

    move-object/from16 v10, p0

    invoke-direct {v10, v5, v0, v15}, Lcom/transsnet/downloader/util/DownloadUtil;->P(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_d

    return-object v11

    :cond_d
    move-object v0, v4

    :goto_7
    if-eqz v14, :cond_e

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v14, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \uff0c\u8f6c\u5b58\u5230\u76f8\u518c \u5931\u8d25"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_f
    move-object v10, v0

    move-object v5, v1

    move-object v1, v7

    move-object/from16 v0, v21

    const/4 v7, 0x3

    move-object/from16 v24, v15

    move-object v15, v3

    move-object/from16 v3, v24

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v6, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v6, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    new-instance v7, Lcom/transsnet/downloader/util/q;

    invoke-direct {v7, v2}, Lcom/transsnet/downloader/util/q;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/transsnet/downloader/util/r;

    invoke-direct {v2, v14}, Lcom/transsnet/downloader/util/r;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v21, v2

    move-object v2, v6

    move-object v6, v3

    move-object/from16 v3, p1

    move-object/from16 p11, v14

    move-object v14, v4

    move-object/from16 v4, v19

    move-object/from16 v5, p4

    move-object/from16 v23, v6

    move-object/from16 v6, p6

    move-object/from16 v17, v1

    move-object v1, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/downloader/y;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, p11

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object/from16 v10, p9

    move-object/from16 v15, v23

    iput-object v10, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p10

    move-object v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/transsnet/downloader/util/DownloadUtil;->Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v20

    if-ne v0, v2, :cond_10

    return-object v2

    :cond_10
    :goto_8
    if-eqz v10, :cond_b

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_11
    move-object/from16 v10, p9

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v15, v23

    iput-object v10, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    iput-object v14, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object v4, v2

    move/from16 v2, p2

    invoke-direct {v0, v3, v2, v15}, Lcom/transsnet/downloader/util/DownloadUtil;->P(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    return-object v4

    :cond_12
    :goto_9
    if-eqz v10, :cond_13

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \uff0c\u8f6c\u5b58\u5230sdcard\uff0c\u8f6c\u5b58\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :goto_b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method

.method public final i(Lcom/transsion/baselib/db/download/DownloadBean;)Z
    .locals 14

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-wide/32 v6, 0x1e00000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v7, "\uff0cpath = "

    const-string v8, ",progress = "

    const-string v9, "download"

    const/4 v10, 0x1

    if-eqz v4, :cond_3

    cmp-long v2, v5, v2

    if-lez v2, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v2

    sub-long/2addr v2, v5

    const-wide/16 v11, 0x1400

    cmp-long v4, v2, v11

    if-lez v4, :cond_2

    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6587\u4ef6\u5df2\u7ecf\u5f00\u59cb\u51fa\u73b0\u5f02\u5e38 name\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11, v10}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    const-wide/32 v11, 0xa00000

    cmp-long v4, v2, v11

    if-lez v4, :cond_4

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u65b0\u4e0b\u8f7d\uff0cfileLength = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",extra = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v9, p1, v10}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v10

    :cond_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u91cd\u65b0\u4e0b\u8f7d\uff0cfileLength = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v9, p1, v10}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v10

    :cond_4
    :goto_1
    return v1
.end method

.method public final j(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 101

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "downloadAna"

    const-string v5, "single\uff0c get download bean from database"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_1a

    :cond_3
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v10, v3

    goto :goto_2

    :cond_5
    :goto_1
    move-object v10, v1

    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v11, v3

    goto :goto_4

    :cond_7
    :goto_3
    move-object v11, v1

    :goto_4
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v12, v3

    goto :goto_6

    :cond_9
    :goto_5
    move-object v12, v1

    :goto_6
    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_7

    :cond_a
    move-object v13, v2

    :goto_7
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getTotalSize()Ljava/lang/Long;

    move-result-object v3

    move-object v14, v3

    goto :goto_8

    :cond_b
    move-object v14, v2

    :goto_8
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v66, v3

    goto :goto_9

    :cond_c
    move-object/from16 v66, v2

    :goto_9
    const v99, 0xffff

    const/16 v100, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

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

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

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

    const/16 v97, -0x20

    const v98, -0x20001

    move-object v9, v0

    invoke-direct/range {v9 .. v100}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_d
    move-object v3, v2

    :goto_a
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_e
    move-object v3, v2

    :goto_b
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_f
    move-object v3, v2

    :goto_c
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_10
    move-object v3, v2

    :goto_d
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_11
    move-object v3, v2

    :goto_e
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    :cond_12
    move-object v3, v2

    :goto_f
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    if-eqz p1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_13
    move-object v3, v2

    :goto_10
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_14
    move-object v3, v2

    :goto_11
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getPostId()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_15
    move-object v3, v2

    :goto_12
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_16
    move-object v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    move-object/from16 v3, p5

    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGroupId(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_17
    move-object v3, v2

    :goto_14
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    if-eqz p1, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResolution()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_15

    :cond_18
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    sget-object v3, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    if-eqz p1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_16

    :cond_19
    move-object v4, v2

    :goto_16
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    if-eqz p1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_17

    :cond_1a
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v3

    :goto_17
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    if-eqz p1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadBy()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1d

    :cond_1b
    if-nez p6, :cond_1c

    move-object v3, v1

    goto :goto_18

    :cond_1c
    move-object/from16 v3, p6

    :cond_1d
    :goto_18
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_19

    :cond_1e
    move-object v1, v3

    :cond_1f
    :goto_19
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    :goto_1a
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "single\uff0c add download task\uff0c "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "downloadAna"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_20
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    return-object v0
.end method

.method public final k(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 99

    const-string v0, "urlBean"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getResource()Lcom/transsion/moviedetailapi/DownloadItem;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getTotalEpisode()I

    move-result v2

    new-instance v8, Lcom/transsion/baselib/db/download/DownloadBean;

    const-string v95, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v4, v95

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v5, v95

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v6, v3

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v6, v95

    :goto_5
    const/16 v96, 0x0

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_6

    :cond_6
    move-object/from16 v7, v96

    :goto_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v60, v3

    goto :goto_7

    :cond_7
    move-object/from16 v60, v96

    :goto_7
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v97, v3

    goto :goto_8

    :cond_8
    move-object/from16 v97, v96

    :goto_8
    const v93, 0xffff

    const/16 v94, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

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

    const/16 v91, -0x20

    const v92, -0x20001

    move-object v3, v8

    move-object/from16 v98, v8

    move-object/from16 v8, v60

    move-object/from16 v60, v97

    invoke-direct/range {v3 .. v94}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    :goto_9
    move-object/from16 v4, v98

    goto :goto_a

    :cond_9
    move-object/from16 v3, v96

    goto :goto_9

    :goto_a
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_a
    move-object/from16 v3, v96

    :goto_b
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_b
    move-object/from16 v3, v96

    :goto_c
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_c
    move-object/from16 v3, v96

    :goto_d
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_d
    move-object/from16 v3, v96

    :goto_e
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_e
    move-object/from16 v3, v96

    :goto_f
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10

    :cond_f
    move-object/from16 v3, v96

    :goto_10
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    if-eqz p2, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_10
    move-object/from16 v3, v96

    :goto_11
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_11
    move-object/from16 v3, v96

    :goto_12
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setAverageHueLight(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_13

    :cond_12
    move-object/from16 v3, v96

    :goto_13
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectDurationSeconds(Ljava/lang/Integer;)V

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getUploadBy()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    :cond_13
    move-object/from16 v3, v95

    :cond_14
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getSourceUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    :cond_15
    move-object/from16 v3, v95

    :cond_16
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_17
    move-object/from16 v3, v96

    :goto_14
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getEpse()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_15

    :cond_18
    move v5, v3

    :goto_15
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    move-result v5

    goto :goto_16

    :cond_19
    move v5, v3

    :goto_16
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    move-result v5

    goto :goto_17

    :cond_1a
    move v5, v3

    :goto_17
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1b
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_1c
    move-object/from16 v0, v96

    :goto_18
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_19

    :cond_1d
    move-object/from16 v3, v96

    :goto_19
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    if-eqz p2, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1a

    :cond_1e
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    :goto_1a
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    invoke-virtual {v4, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    if-eqz p2, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1f
    move-object/from16 v0, v96

    :goto_1b
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_20

    goto :goto_1c

    :cond_20
    if-eqz p2, :cond_21

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_21
    move-object/from16 v0, v96

    goto :goto_1d

    :cond_22
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    if-eqz p2, :cond_23

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    :cond_23
    move-object/from16 v0, v96

    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    return-object v4
.end method

.method public final l(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 99

    const-string v0, "bean"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/Video;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/moviedetailapi/bean/Video;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    move-object v6, v2

    new-instance v2, Lcom/transsion/moviedetailapi/bean/Video;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v2

    move-object v4, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Lcom/transsion/moviedetailapi/bean/Video;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v5, Lcom/transsion/moviedetailapi/bean/Cover;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x1d7

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v21}, Lcom/transsion/moviedetailapi/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v29, Lcom/transsion/moviedetailapi/bean/Media;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, v29

    invoke-direct/range {v3 .. v10}, Lcom/transsion/moviedetailapi/bean/Media;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/FirstFrame;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Video;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    move-result-wide v2

    const-string v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lcom/blankj/utilcode/util/c0;->i(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object/from16 v40, v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    move-result-object v44

    new-instance v34, Lcom/transsion/moviedetailapi/bean/Subject;

    move-object/from16 v33, v34

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const v97, 0x7ffffff

    const/16 v98, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

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

    const-wide/16 v73, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

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

    const/16 v96, -0x228

    invoke-direct/range {v34 .. v98}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;Lcom/transsion/baselib/db/download/VipInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    new-instance v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-object/from16 v22, v0

    const/16 v57, 0x1

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x1

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const v56, -0x100014c3

    invoke-direct/range {v22 .. v58}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final o(Lcom/transsion/baselib/db/download/DownloadBean;)J
    .locals 9

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x500000

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    const-wide/32 v3, 0xea60

    if-lez p1, :cond_2

    const p1, 0xb400

    int-to-long v7, p1

    mul-long/2addr v7, v5

    div-long/2addr v7, v3

    add-long/2addr v7, v1

    const-wide/32 v0, 0x900000

    cmp-long p1, v7, v0

    if-lez p1, :cond_4

    move-wide v7, v0

    goto :goto_1

    :cond_2
    const p1, 0x15400

    int-to-long v7, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    mul-long/2addr v7, v5

    div-long/2addr v7, v3

    sub-long/2addr v1, v7

    const-wide/32 v3, 0x300000

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    move-wide v7, v3

    goto :goto_1

    :cond_3
    move-wide v7, v1

    :cond_4
    :goto_1
    return-wide v7

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_6
    const-wide/32 v1, 0x780000

    :goto_3
    return-wide v1
.end method

.method public final r(Lcom/transsion/baselib/db/download/DownloadBean;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_audio_white:I

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_short_tv_white:I

    goto :goto_3

    :cond_4
    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_tv_white:I

    goto :goto_3

    :cond_5
    :goto_2
    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_movie_white:I

    :goto_3
    return p1
.end method

.method public final s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\\\\/:#*?\"<>|&,]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "?"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lkotlin/text/StringsKt;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-static {v1, v2, v3, v4, v3}, Lkotlin/text/StringsKt;->f1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "mp4"

    :cond_0
    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/util/DownloadUtil;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->u()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final t(Ljava/util/List;I)I
    .locals 4

    const-string v0, "seasons"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    const/4 p1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getResolutions()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v0

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    move-result v3

    if-ge v0, v3, :cond_5

    move-object v1, v2

    move v0, v3

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    check-cast v1, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getResolution()I

    move-result p1

    :cond_6
    return p1
.end method

.method public final v()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public final w(Ljava/util/List;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesAllCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isCheck()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    add-int/2addr v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method public final x(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz p8, :cond_3

    move-object/from16 v2, p8

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v2, p8

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v3, :cond_4

    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->z(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->z(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setVipInfo(Lcom/transsion/baselib/db/download/VipInfo;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method
