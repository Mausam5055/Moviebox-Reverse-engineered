.class public final Llk/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/commercializationapi/ICommonDialogApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llk/c$a;
    }
.end annotation


# static fields
.field public static final d:Llk/c$a;


# instance fields
.field private a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llk/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llk/c;->d:Llk/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llk/a;

    invoke-direct {v0}, Llk/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Llk/c;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Llk/c;->j(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic d()Llk/e;
    .locals 1

    invoke-static {}, Llk/c;->i()Llk/e;

    const/4 v0, 0x0

    return-object v0
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    const-class v0, Llk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final f(Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;)Ljava/util/List;
    .locals 15

    move-object/from16 v0, p3

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "global_dialog_date"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lti/p;->a:Lti/p;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lti/p;->b(Lti/p;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "global_widget_history"

    const-string v7, "global_dialog_history"

    const-string v8, "popup"

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    sget-object v9, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Llk/c;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> getDialogRecord() --> \u4e0d\u662f\u540c\u4e00\u5929\u6570\u636e\uff0creturn mutableListOf() --> currentDate = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- globalDialogDate = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> \u4e0d\u662f\u540c\u4e00\u5929\u6570\u636e\uff0c\u9700\u8981\u6e05\u7a7a\u672c\u5730\u4fdd\u5b58\u7684\u6570\u636e"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "zxb_popup"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_2
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    const-class v1, Lcom/transsion/bean/HomePopupRequestEntity;

    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fromJson(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic g(Llk/c;Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "popup"

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Llk/c;->f(Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final h(Lcom/transsion/bean/HomePopupEntity;Ljava/lang/String;)V
    .locals 14

    move-object v6, p1

    move-object/from16 v7, p2

    const-string v8, "popup"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getPopup()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_0
    move-object v10, v9

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-nez v10, :cond_2

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Llk/c;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> saveDialogRecord() --> popup == null --> \u4fdd\u5b58\u6570\u636e\u5f02\u5e38 -- type = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "zxb_popup"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v5}, Llk/c;->g(Llk/c;Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v9

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/bean/HomePopupRequestEntity;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/bean/HomePopupRequestEntity;->getId()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    move-result-wide v11

    cmp-long v4, v4, v11

    if-nez v4, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    const-wide/16 v3, 0x0

    if-nez v2, :cond_6

    new-instance v2, Lcom/transsion/bean/HomePopupRequestEntity;

    invoke-virtual {v10}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    move-result-wide v10

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    move-result-wide v12

    goto :goto_3

    :cond_5
    move-wide v12, v3

    :goto_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v10, v11, v5, v1}, Lcom/transsion/bean/HomePopupRequestEntity;-><init>(JLjava/lang/Long;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupRequestEntity;->getCount()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/transsion/bean/HomePopupRequestEntity;->setCount(I)V

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v9

    :goto_4
    invoke-virtual {v2, v1}, Lcom/transsion/bean/HomePopupRequestEntity;->setTs(Ljava/lang/Long;)V

    :goto_5
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "global_dialog_history"

    goto :goto_6

    :cond_8
    const-string v5, "global_widget_history"

    :goto_6
    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lti/p;->a:Lti/p;

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    move-result-wide v3

    :cond_9
    const-wide/16 v10, 0x3e8

    mul-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v9, v3, v9}, Lti/p;->b(Lti/p;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "global_dialog_date"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Llk/c;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> saveDialogRecord() --> type = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> \u5c55\u793a\u8bb0\u5f55\u4fdd\u5b58 --> homePopup = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "zxb_popup"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final i()Llk/e;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Llk/e;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static final j(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    invoke-direct {v0}, Lcom/transsion/commercialization/dialog/TaskCommonDialog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/commercialization/dialog/TaskCommonDialog;->x0(Lcom/transsion/bean/HomePopupEntity;)Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/commercialization/dialog/TaskCommonDialog;->w0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    move-result-object p0

    const-string p1, "TaskCommonDialog"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 1

    const-string v0, "widget"

    invoke-direct {p0, p1, v0}, Llk/c;->h(Lcom/transsion/bean/HomePopupEntity;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Llk/b;

    invoke-direct {v1, p1, p2, v0}, Llk/b;-><init>(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Llk/c;->a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    iget-object v1, p0, Llk/c;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    iput-object v0, p0, Llk/c;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method
