.class public final Lcom/transsion/baselib/report/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/baselib/report/e;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/text/Regex;

.field private static final d:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/report/e;

    invoke-direct {v0}, Lcom/transsion/baselib/report/e;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    new-instance v0, Lcom/transsion/baselib/report/b;

    invoke-direct {v0}, Lcom/transsion/baselib/report/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/baselib/report/e;->b:Lkotlin/Lazy;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "VmSize:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/baselib/report/e;->c:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "VmRSS:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/baselib/report/e;->d:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/report/e;->m(Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljb/b;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/report/e;->o(Ljb/b;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/report/e;->j()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method private final d(J)Ljava/lang/String;
    .locals 3

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1f"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final e(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p3}, Lkotlin/io/TextStreamsKt;->c(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/transsion/baselib/report/e;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baselib/report/e;->e(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final h(Landroid/content/Context;)Landroid/os/Debug$MemoryInfo;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    const-string v0, "getProcessMemoryInfo(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final i(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-float p1, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.1f"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final j()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final k(Lkotlin/text/Regex;Ljava/lang/String;)I
    .locals 0

    invoke-static {p2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final m(Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VmSize"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    sget-object v1, Lcom/transsion/baselib/report/e;->c:Lkotlin/text/Regex;

    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vss"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "VmRSS"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    sget-object v1, Lcom/transsion/baselib/report/e;->d:Lkotlin/text/Regex;

    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rss"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final o(Ljb/b;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VmSize"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    sget-object v1, Lcom/transsion/baselib/report/e;->c:Lkotlin/text/Regex;

    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vss"

    invoke-virtual {p0, v0, p1}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "VmRSS"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    sget-object v1, Lcom/transsion/baselib/report/e;->d:Lkotlin/text/Regex;

    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rss"

    invoke-virtual {p0, v0, p1}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final g()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/e;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public final l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    invoke-static {v0}, Ljb/a;->a(Lcom/google/firebase/c;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/transsion/baselib/report/e;->h(Landroid/content/Context;)Landroid/os/Debug$MemoryInfo;

    move-result-object p3

    if-eqz p3, :cond_5

    if-eqz p2, :cond_0

    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_heap"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "total_heap"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "free_heap"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    iget v2, p3, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-direct {v1, v2}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "native_pss"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    iget p3, p3, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-direct {v1, p3}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "other_pss"

    invoke-virtual {p2, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    new-instance v3, Ljava/io/File;

    const-string p3, "/proc/self/status"

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/baselib/report/c;

    invoke-direct {v5, p2}, Lcom/transsion/baselib/report/c;-><init>(Landroid/os/Bundle;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/baselib/report/e;->f(Lcom/transsion/baselib/report/e;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V
    .locals 9

    const-string v0, "screenName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    invoke-static {v0}, Ljb/a;->a(Lcom/google/firebase/c;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    new-instance v1, Ljb/b;

    invoke-direct {v1}, Ljb/b;-><init>()V

    const-string v2, "screen_name"

    invoke-virtual {v1, v2, p1}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "screen_class"

    invoke-virtual {v1, v2, p1}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-string v2, "engagement_time_msec"

    invoke-virtual {v1, v2, p1, p2}, Ljb/b;->b(Ljava/lang/String;J)V

    sget-object v3, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    invoke-direct {v3, p3}, Lcom/transsion/baselib/report/e;->h(Landroid/content/Context;)Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p2

    invoke-direct {v3, p2, p3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "max_heap"

    invoke-virtual {v1, p3, p2}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide p2

    invoke-direct {v3, p2, p3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "total_heap"

    invoke-virtual {v1, p3, p2}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide p2

    invoke-direct {v3, p2, p3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "free_heap"

    invoke-virtual {v1, p3, p2}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-direct {v3, p2}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "native_pss"

    invoke-virtual {v1, p3, p2}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-direct {v3, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "other_pss"

    invoke-virtual {v1, p2, p1}, Ljb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string p1, "/proc/self/status"

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/baselib/report/d;

    invoke-direct {v6, v1}, Lcom/transsion/baselib/report/d;-><init>(Ljb/b;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/baselib/report/e;->f(Lcom/transsion/baselib/report/e;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljb/b;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "screen_view"

    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final p(Z)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    invoke-static {v0}, Lnb/i;->a(Lcom/google/firebase/c;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    const-string p1, "original_vs"

    const-string v1, "4.0.01.0813.02"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/baselib/report/e;->g()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, ""

    const-string v4, "firebase_id"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-virtual {v0}, Lih/b;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v2, v0

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    invoke-static {v0}, Lnb/i;->a(Lcom/google/firebase/c;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
