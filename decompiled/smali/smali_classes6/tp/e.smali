.class public final Ltp/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp/e$a;
    }
.end annotation


# static fields
.field public static final a:Ltp/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltp/e;

    invoke-direct {v0}, Ltp/e;-><init>()V

    sput-object v0, Ltp/e;->a:Ltp/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltp/e;->h(ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(JJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltp/e;->o(JJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(JJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltp/e;->m(JJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/transsion/pushapi/NoticePermissionFrom;Lcf/f;Ljava/util/List;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ltp/e;->g(Lcom/transsion/pushapi/NoticePermissionFrom;Lcf/f;Ljava/util/List;ZZ)V

    return-void
.end method

.method private static final g(Lcom/transsion/pushapi/NoticePermissionFrom;Lcf/f;Ljava/util/List;ZZ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "scope"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "deniedList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "NoticePer"

    const-string v6, "\u8bf7\u6c42\u6743\u9650\u4e4b\u540e\uff0c\u65e0\u9700\u5f39\u7a97"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    sget-object v10, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " \u8bf7\u6c42\u6743\u9650\uff0c\u9700\u8981\u8df3\u5230\u8bbe\u7f6e\u9875\uff0c\u5148\u5c55\u793a\u63d0\u793a\u5f39\u7a97"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "NoticePer"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v3, Lbf/a;

    sget-object v4, Ltp/e;->a:Ltp/e;

    invoke-virtual {v4, v0}, Ltp/e;->i(Lcom/transsion/pushapi/NoticePermissionFrom;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v4, Lcom/transsion/lib/push/R$string;->permission_notice_turn_on:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget v0, Lcom/transsion/lib/push/R$mipmap;->ic_notification_permission_tips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    sget v0, Lcom/tn/lib/widget/R$color;->white_20:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v23}, Lbf/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2, v3}, Lcf/f;->c(Ljava/util/List;Lbf/a;)V

    return-void

    :cond_1
    sget-object v3, Lcom/transsion/pushapi/NoticePermissionFrom;->APP_START:Lcom/transsion/pushapi/NoticePermissionFrom;

    if-ne v0, v3, :cond_2

    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "NoticePer"

    const-string v6, "app \u542f\u52a8 \u76f4\u63a5\u8bf7\u6c42\u6743\u9650"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Lcf/f;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    sget-object v10, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " \u8bf7\u6c42\u6743\u9650\u524d\uff0c\u63d0\u793a\u5f39\u7a97"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "NoticePer"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v3, Lbf/a;

    sget-object v4, Ltp/e;->a:Ltp/e;

    invoke-virtual {v4, v0}, Ltp/e;->i(Lcom/transsion/pushapi/NoticePermissionFrom;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v4, Lcom/transsion/lib/push/R$string;->permission_notice_turn_on:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget v0, Lcom/transsion/lib/push/R$mipmap;->ic_notification_permission_tips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    sget v0, Lcom/tn/lib/widget/R$color;->white_20:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v23}, Lbf/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2, v3}, Lcf/f;->e(Ljava/util/List;Lbf/a;)V

    :goto_0
    return-void
.end method

.method private static final h(ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    const-string v0, "grantedList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deniedList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u901a\u77e5\u6743\u9650 \u8bf7\u6c42\u6743\u9650\u7ed3\u679c:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "NoticePer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final j(Lcom/transsion/pushapi/NoticePermissionFrom;)Z
    .locals 3

    sget-object v0, Ltp/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/push/utils/t;->a:Lcom/transsion/push/utils/t;

    invoke-virtual {p1}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "key_notification_permission_download"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ltp/e;->k()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private final k()Z
    .locals 15

    sget-object v0, Lcom/transsion/push/utils/t;->a:Lcom/transsion/push/utils/t;

    invoke-virtual {v0}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "key_notification_permission_app_start_count"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v7, "key_notification_permission_app_start_last_time"

    invoke-virtual {v1, v7, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sget-object v1, Lcom/transsion/push/helper/i;->a:Lcom/transsion/push/helper/i;

    invoke-virtual {v1}, Lcom/transsion/push/helper/i;->b()Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v8}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    invoke-direct {p0}, Ltp/e;->l()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const v3, 0x36ee80

    mul-int/2addr v3, v1

    int-to-long v3, v3

    cmp-long v3, v9, v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app\u542f\u52a8 \u8d85\u8fc7"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5c0f\u65f6\uff0c\u518d\u6b21\u8bf7\u6c42  count:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NoticePer"

    invoke-virtual {v3, v4, v1, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v7, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-wide/16 v3, 0x1

    add-long/2addr v5, v3

    invoke-virtual {v0, v2, v5, v6}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ltp/e;->n()V

    return v8

    :cond_2
    :goto_1
    sget-object v9, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app\u542f\u52a8\uff0c\u5c0f\u4e8e"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5c0f\u65f6\uff0c\u4e0d\u8bf7\u6c42 count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "NoticePer"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method private final l()Z
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/transsion/push/utils/t;->a:Lcom/transsion/push/utils/t;

    invoke-virtual {v5}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "key_notice_permission_app_start_limit_time"

    invoke-virtual {v5, v6, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    new-array v7, v0, [C

    const/16 v2, 0x2c

    aput-char v2, v7, v1

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    :goto_2
    const-wide/32 v5, 0x240c8400

    sub-long/2addr v3, v5

    new-instance v5, Ltp/c;

    invoke-direct {v5, v3, v4}, Ltp/c;-><init>(J)V

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0

    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method private static final m(JJ)Z
    .locals 0

    cmp-long p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final n()V
    .locals 12

    const-string v0, ""

    const-string v1, "key_notice_permission_app_start_limit_time"

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/transsion/push/utils/t;->a:Lcom/transsion/push/utils/t;

    invoke-virtual {v4}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x1

    new-array v6, v0, [C

    const/16 v0, 0x2c

    const/4 v4, 0x0

    aput-char v0, v6, v4

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_2
    const-wide/32 v4, 0x240c8400

    sub-long v4, v2, v4

    new-instance v6, Ltp/d;

    invoke-direct {v6, v4, v5}, Ltp/d;-><init>(J)V

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, ","

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/transsion/push/utils/t;->a:Lcom/transsion/push/utils/t;

    invoke-virtual {v2}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void
.end method

.method private static final o(JJ)Z
    .locals 0

    cmp-long p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final e(Landroidx/fragment/app/Fragment;Lcom/transsion/pushapi/NoticePermissionFrom;)Z
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ltp/e;->a:Ltp/e;

    invoke-virtual {v0, p1, p2}, Ltp/e;->f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/pushapi/NoticePermissionFrom;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/pushapi/NoticePermissionFrom;)Z
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "activity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "from"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v4, p0

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lye/c;->a:Lye/c;

    invoke-virtual {v2, v0}, Lye/c;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v5, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRequestPermission , \u6743\u9650\u5df2\u5f00\u542f, from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "NoticePer"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v3

    :cond_2
    move-object/from16 v4, p0

    invoke-direct {v4, v1}, Ltp/e;->j(Lcom/transsion/pushapi/NoticePermissionFrom;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v6, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRequestPermission \u4e0d\u8bf7\u6c42\u6743\u9650, from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "NoticePer"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v3

    :cond_3
    sget-object v12, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRequestPermission from:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "NoticePer"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Lye/c;->e(Landroidx/fragment/app/FragmentActivity;)Lye/a;

    move-result-object v0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lye/a;->b([Ljava/lang/String;)Lcf/h;

    move-result-object v0

    invoke-interface {v0}, Lcf/h;->b()Lcf/h;

    move-result-object v0

    new-instance v2, Ltp/a;

    invoke-direct {v2, v1}, Ltp/a;-><init>(Lcom/transsion/pushapi/NoticePermissionFrom;)V

    invoke-interface {v0, v2}, Lcf/h;->c(Lze/b;)Lcf/h;

    move-result-object v0

    new-instance v1, Ltp/b;

    invoke-direct {v1}, Ltp/b;-><init>()V

    invoke-interface {v0, v1}, Lcf/h;->a(Lze/c;)V

    const/4 v0, 0x1

    return v0

    :goto_0
    return v3
.end method

.method public final i(Lcom/transsion/pushapi/NoticePermissionFrom;)Ljava/lang/String;
    .locals 2

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ltp/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const-string v1, "getString(...)"

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/lib/push/R$string;->permission_notice_tips_music:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/lib/push/R$string;->permission_notice_tips_normal:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
