.class public final Lcom/transsion/mbtools/CalendarRemindUtils;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/mbtools/CalendarRemindUtils;

.field private static b:Ljava/util/HashSet;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mbtools/CalendarRemindUtils;

    invoke-direct {v0}, Lcom/transsion/mbtools/CalendarRemindUtils;-><init>()V

    sput-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->a:Lcom/transsion/mbtools/CalendarRemindUtils;

    sget-object v0, Lcom/transsion/mbtools/CalendarRemindUtils$mmkv$2;->INSTANCE:Lcom/transsion/mbtools/CalendarRemindUtils$mmkv$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->c:Lkotlin/Lazy;

    sget-object v0, Lcom/transsion/mbtools/CalendarRemindUtils$md5Json$2;->INSTANCE:Lcom/transsion/mbtools/CalendarRemindUtils$md5Json$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mbtools/CalendarRemindUtils;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mbtools/CalendarRemindUtils;->f()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/mbtools/CalendarRemindUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mbtools/CalendarRemindUtils;->k()V

    return-void
.end method

.method private final e(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const-string v0, "android.permission.WRITE_CALENDAR"

    const-string v1, "android.permission.READ_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/transsion/mbtools/CalendarRemindUtils$a;

    invoke-direct {v1, p1, p2}, Lcom/transsion/mbtools/CalendarRemindUtils$a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->y()V

    return-void

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final f()Ljava/lang/Long;
    .locals 8

    const-string v0, "_id"

    const-string v1, "calendar_displayName"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "visible = 1 AND sync_events = 1"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-wide/16 v2, -0x1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/blankj/utilcode/util/u;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_3
    :try_start_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    :goto_2
    return-object v1
.end method

.method private final g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final j()V
    .locals 3

    sget-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->b:Ljava/util/HashSet;

    if-nez v0, :cond_2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/transsion/mbtools/CalendarRemindUtils;->a:Lcom/transsion/mbtools/CalendarRemindUtils;

    invoke-direct {v1}, Lcom/transsion/mbtools/CalendarRemindUtils;->g()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_1
    sput-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/transsion/mbtools/CalendarRemindUtils;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "md5Json\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private final k()V
    .locals 6

    sget-object v0, Lkotlinx/coroutines/n1;->a:Lkotlinx/coroutines/n1;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/mbtools/CalendarRemindUtils$saveMd5$1;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/transsion/mbtools/CalendarRemindUtils$saveMd5$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final d(Lcom/transsion/mbtools/CalendarBean;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/mbtools/CalendarRemindUtils;->i(Lcom/transsion/mbtools/CalendarBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Appointment has added"

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/mbtools/CalendarBean;->getStartTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/mbtools/CalendarBean;->getEndTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/mbtools/CalendarBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/mbtools/CalendarRemindUtils$addAppointment$1;

    invoke-direct {v0, p1, p2}, Lcom/transsion/mbtools/CalendarRemindUtils$addAppointment$1;-><init>(Lcom/transsion/mbtools/CalendarBean;Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/transsion/mbtools/CalendarRemindUtils$addAppointment$2;

    invoke-direct {p1, p3}, Lcom/transsion/mbtools/CalendarRemindUtils$addAppointment$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0, p1}, Lcom/transsion/mbtools/CalendarRemindUtils;->e(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/mbtools/CalendarBean;->getStartTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/mbtools/CalendarBean;->getEndTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/mbtools/CalendarBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bean is null, startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",endTime:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", title:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()Lcom/tencent/mmkv/MMKV;
    .locals 2

    sget-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mmkv>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method public final i(Lcom/transsion/mbtools/CalendarBean;)Z
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/mbtools/CalendarRemindUtils;->j()V

    sget-object v0, Lcom/transsion/mbtools/MD5HashProvider;->a:Lcom/transsion/mbtools/MD5HashProvider;

    invoke-virtual {p1}, Lcom/transsion/mbtools/CalendarBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/mbtools/MD5HashProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/mbtools/CalendarRemindUtils;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
