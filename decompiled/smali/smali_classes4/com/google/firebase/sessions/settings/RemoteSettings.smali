.class public final Lcom/google/firebase/sessions/settings/RemoteSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/sessions/settings/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/RemoteSettings$a;
    }
.end annotation


# static fields
.field private static final g:Lcom/google/firebase/sessions/settings/RemoteSettings$a;


# instance fields
.field private final a:Lkotlin/coroutines/CoroutineContext;

.field private final b:Ljc/e;

.field private final c:Lcom/google/firebase/sessions/b;

.field private final d:Lcom/google/firebase/sessions/settings/a;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlinx/coroutines/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/RemoteSettings$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->g:Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljc/e;Lcom/google/firebase/sessions/b;Lcom/google/firebase/sessions/settings/a;Landroidx/datastore/core/f;)V
    .locals 1

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallationsApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configsFetcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStore"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->a:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->b:Ljc/e;

    iput-object p3, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->c:Lcom/google/firebase/sessions/b;

    iput-object p4, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->d:Lcom/google/firebase/sessions/settings/a;

    new-instance p1, Lcom/google/firebase/sessions/settings/RemoteSettings$settingsCache$2;

    invoke-direct {p1, p5}, Lcom/google/firebase/sessions/settings/RemoteSettings$settingsCache$2;-><init>(Landroidx/datastore/core/f;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lkotlin/Lazy;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lkotlinx/coroutines/sync/a;

    return-void
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    move-result-object p0

    return-object p0
.end method

.method private final f()Lcom/google/firebase/sessions/settings/SettingsCache;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/settings/SettingsCache;

    return-object v0
.end method

.method private final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->g()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b()Lkotlin/time/Duration;
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->g(J)Lkotlin/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/Double;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->f()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    instance-of v6, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    iget v7, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    invoke-direct {v6, v1, v0}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v7

    iget v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    if-eq v8, v5, :cond_3

    if-eq v8, v4, :cond_2

    if-ne v8, v3, :cond_1

    iget-object v2, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/a;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/a;

    iget-object v10, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/google/firebase/sessions/settings/RemoteSettings;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v8

    goto/16 :goto_4

    :cond_3
    iget-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/a;

    iget-object v10, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/google/firebase/sessions/settings/RemoteSettings;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lkotlinx/coroutines/sync/a;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/a;->d()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->d()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lkotlinx/coroutines/sync/a;

    iput-object v1, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    iput v5, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    invoke-interface {v0, v9, v6}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_6

    return-object v7

    :cond_6
    move-object v8, v0

    move-object v10, v1

    :goto_1
    :try_start_2
    invoke-direct {v10}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->d()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    return-object v0

    :cond_7
    :try_start_3
    sget-object v0, Lcom/google/firebase/sessions/InstallationId;->c:Lcom/google/firebase/sessions/InstallationId$Companion;

    iget-object v11, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->b:Ljc/e;

    iput-object v10, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    iput-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    iput v4, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    invoke-virtual {v0, v11, v6}, Lcom/google/firebase/sessions/InstallationId$Companion;->a(Ljc/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_8

    return-object v7

    :cond_8
    :goto_2
    check-cast v0, Lcom/google/firebase/sessions/InstallationId;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/InstallationId;->b()Ljava/lang/String;

    move-result-object v0

    const-string v11, ""

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v0, "SessionConfigFetcher"

    const-string v2, "Error getting Firebase Installation ID. Skipping this Session Event."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    return-object v0

    :cond_9
    :try_start_4
    const-string v11, "X-Crashlytics-Installation-ID"

    invoke-static {v11, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v11, "X-Crashlytics-Device-Model"

    sget-object v12, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v12, "%s/%s"

    new-array v13, v4, [Ljava/lang/Object;

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v14, v13, v2

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v14, v13, v5

    invoke-static {v13, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "format(format, *args)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Lcom/google/firebase/sessions/settings/RemoteSettings;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const-string v12, "X-Crashlytics-OS-Build-Version"

    sget-object v13, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v14, "INCREMENTAL"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v13}, Lcom/google/firebase/sessions/settings/RemoteSettings;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const-string v13, "X-Crashlytics-OS-Display-Version"

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v15, "RELEASE"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v14}, Lcom/google/firebase/sessions/settings/RemoteSettings;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const-string v14, "X-Crashlytics-API-Client-Version"

    iget-object v15, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->c:Lcom/google/firebase/sessions/b;

    invoke-virtual {v15}, Lcom/google/firebase/sessions/b;->f()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/4 v15, 0x5

    new-array v15, v15, [Lkotlin/Pair;

    aput-object v0, v15, v2

    aput-object v11, v15, v5

    aput-object v12, v15, v4

    aput-object v13, v15, v3

    const/4 v0, 0x4

    aput-object v14, v15, v0

    invoke-static {v15}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->d:Lcom/google/firebase/sessions/settings/a;

    new-instance v4, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    invoke-direct {v4, v10, v9}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;

    invoke-direct {v5, v9}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    iput-object v9, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    iput v3, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    invoke-interface {v2, v0, v4, v5, v6}, Lcom/google/firebase/sessions/settings/a;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v7, :cond_a

    return-object v7

    :cond_a
    move-object v2, v8

    :goto_3
    :try_start_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_4
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
