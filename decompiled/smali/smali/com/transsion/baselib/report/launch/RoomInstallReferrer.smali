.class public final Lcom/transsion/baselib/report/launch/RoomInstallReferrer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

.field private static b:Lg5/a;

.field private static c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

    invoke-direct {v0}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->a:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Landroid/app/Application;Lg5/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->g(Landroid/app/Application;Lg5/d;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->h(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c()Lg5/a;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->b:Lg5/a;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final g(Landroid/app/Application;Lg5/d;)V
    .locals 8

    invoke-virtual {p2}, Lg5/d;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchInstallReferrer referrerUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "RoomInstallReferrer"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrer$1;

    const/4 v1, 0x0

    invoke-direct {v5, p1, v0, p2, v1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrer$1;-><init>(Landroid/app/Application;Ljava/lang/String;Lg5/d;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final h(Landroid/app/Application;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchInstallReferrerErr msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "RoomInstallReferrer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrerErr$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrerErr$1;-><init>(Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final j(Lcom/transsion/baselib/report/launch/c;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    iget v1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;-><init>(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-wide v5, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v2, "k_install_referrer"

    invoke-virtual {p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object p1

    const-string v2, "key_referrer_palm_store"

    invoke-virtual {p1, v2}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SnowballReferrer"

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get referrer: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v0, Lcom/transsion/baselib/report/launch/c;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->j(Lcom/transsion/baselib/report/launch/c;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x2710

    cmp-long p1, v7, v9

    if-lez p1, :cond_7

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "wait referrer timeout"

    invoke-virtual {p1, v2, v0, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    iput-wide v5, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->J$0:J

    iput v4, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1
.end method


# virtual methods
.method public final e(Landroid/app/Application;Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lis"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_install_referrer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "localReferrerUrl:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "RoomInstallReferrer"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    sput-object p2, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;

    :try_start_0
    invoke-static {p1}, Lg5/a;->c(Landroid/content/Context;)Lg5/a$b;

    move-result-object p2

    invoke-virtual {p2}, Lg5/a$b;->a()Lg5/a;

    move-result-object p2

    sput-object p2, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->b:Lg5/a;

    if-nez p2, :cond_2

    const-string p2, "referrerClient"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    new-instance p2, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$b;

    invoke-direct {p2, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$b;-><init>(Landroid/app/Application;)V

    invoke-virtual {v2, p2}, Lg5/a;->d(Lg5/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p2, "unknown err"

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->h(Landroid/app/Application;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final f(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/16 p2, 0xa0a

    invoke-static {p2}, Lcom/transsion/ga/AthenaAnalytics;->Y(I)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v3, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$checkSnowballInstallReferrer$3;

    const/4 p2, 0x0

    invoke-direct {v3, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$checkSnowballInstallReferrer$3;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final i(Landroid/app/Application;Ljava/lang/String;Lg5/d;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_install_referrer"

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-object v2, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    invoke-virtual {v2, p2}, Lcom/transsion/baselib/helper/b;->d(Ljava/lang/String;)Lcom/transsion/baselib/helper/ReferrerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    sget-object v3, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {v3, p1}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    sget-object v4, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v4, v3}, Lbh/a$a;->e(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmCampaign()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v4, v3}, Lbh/a$a;->g(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lbh/a;->a:Lbh/a$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lbh/a$a;->f(Ljava/lang/String;)V

    const-string v3, "install_time"

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "install_version"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install_referrer"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "install_store"

    sget-object v1, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {v1, p1}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_5

    const-string p1, "referrer_click_timestamp_seconds"

    invoke-virtual {p3}, Lg5/d;->f()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "install_begin_timestamp_seconds"

    invoke-virtual {p3}, Lg5/d;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "google_play_instant"

    invoke-virtual {p3}, Lg5/d;->a()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "referrer_click_timestamp_server_seconds"

    invoke-virtual {p3}, Lg5/d;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "install_begin_timestamp_server_seconds"

    invoke-virtual {p3}, Lg5/d;->g()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "app_install"

    invoke-virtual {p1, p2, v0}, Lhj/i;->t(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;

    if-eqz p1, :cond_6

    invoke-interface {p1, v2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;->a(Lcom/transsion/baselib/helper/ReferrerBean;)V

    :cond_6
    const/4 p1, 0x0

    sput-object p1, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "RoomInstallReferrer"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->e(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_2
    return-void
.end method
