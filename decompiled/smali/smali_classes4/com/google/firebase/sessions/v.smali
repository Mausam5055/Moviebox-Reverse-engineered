.class public final Lcom/google/firebase/sessions/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/firebase/sessions/v;

.field private static final b:Lbc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/v;

    invoke-direct {v0}, Lcom/google/firebase/sessions/v;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/v;->a:Lcom/google/firebase/sessions/v;

    new-instance v0, Ldc/d;

    invoke-direct {v0}, Ldc/d;-><init>()V

    sget-object v1, Lcom/google/firebase/sessions/c;->a:Lcc/a;

    invoke-virtual {v0, v1}, Ldc/d;->j(Lcc/a;)Ldc/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldc/d;->k(Z)Ldc/d;

    move-result-object v0

    invoke-virtual {v0}, Ldc/d;->i()Lbc/a;

    move-result-object v0

    const-string v1, "JsonDataEncoderBuilder()\u2026lues(true)\n      .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/v;->b:Lbc/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/firebase/sessions/api/SessionSubscriber;)Lcom/google/firebase/sessions/DataCollectionState;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_SDK_NOT_INSTALLED:Lcom/google/firebase/sessions/DataCollectionState;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/sessions/api/SessionSubscriber;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_ENABLED:Lcom/google/firebase/sessions/DataCollectionState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/firebase/sessions/DataCollectionState;->COLLECTION_DISABLED:Lcom/google/firebase/sessions/DataCollectionState;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/firebase/f;Lcom/google/firebase/sessions/t;Lcom/google/firebase/sessions/settings/SessionsSettings;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/sessions/u;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "firebaseApp"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sessionDetails"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sessionsSettings"

    move-object/from16 v5, p3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "subscribers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "firebaseInstallationId"

    move-object/from16 v11, p5

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "firebaseAuthenticationToken"

    move-object/from16 v12, p6

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/firebase/sessions/u;

    sget-object v13, Lcom/google/firebase/sessions/EventType;->SESSION_START:Lcom/google/firebase/sessions/EventType;

    new-instance v14, Lcom/google/firebase/sessions/x;

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/t;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/t;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/t;->c()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/t;->d()J

    move-result-wide v9

    new-instance v15, Lcom/google/firebase/sessions/d;

    sget-object v4, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->PERFORMANCE:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/sessions/api/SessionSubscriber;

    invoke-direct {v0, v4}, Lcom/google/firebase/sessions/v;->d(Lcom/google/firebase/sessions/api/SessionSubscriber;)Lcom/google/firebase/sessions/DataCollectionState;

    move-result-object v4

    sget-object v3, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->CRASHLYTICS:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/sessions/api/SessionSubscriber;

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/v;->d(Lcom/google/firebase/sessions/api/SessionSubscriber;)Lcom/google/firebase/sessions/DataCollectionState;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/sessions/settings/SessionsSettings;->b()D

    move-result-wide v11

    invoke-direct {v15, v4, v1, v11, v12}, Lcom/google/firebase/sessions/d;-><init>(Lcom/google/firebase/sessions/DataCollectionState;Lcom/google/firebase/sessions/DataCollectionState;D)V

    move-object v4, v14

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-wide v8, v9

    move-object v10, v15

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcom/google/firebase/sessions/x;-><init>(Ljava/lang/String;Ljava/lang/String;IJLcom/google/firebase/sessions/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/google/firebase/sessions/v;->b(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/b;

    move-result-object v1

    invoke-direct {v2, v13, v14, v1}, Lcom/google/firebase/sessions/u;-><init>(Lcom/google/firebase/sessions/EventType;Lcom/google/firebase/sessions/x;Lcom/google/firebase/sessions/b;)V

    return-object v2
.end method

.method public final b(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/b;
    .locals 16

    const-string v0, "firebaseApp"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "firebaseApp.applicationContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_0

    invoke-static {v0}, Ld7/a;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v6, v3

    goto :goto_1

    :cond_0
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    new-instance v14, Lcom/google/firebase/sessions/b;

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    move-result-object v10

    const-string v3, "firebaseApp.options.applicationId"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "RELEASE"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/google/firebase/sessions/LogEnvironment;->LOG_ENVIRONMENT_PROD:Lcom/google/firebase/sessions/LogEnvironment;

    new-instance v15, Lcom/google/firebase/sessions/a;

    const-string v3, "packageName"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v5, v6

    goto :goto_2

    :cond_1
    move-object v5, v0

    :goto_2
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "MANUFACTURER"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/sessions/q;->a:Lcom/google/firebase/sessions/q;

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/firebase/sessions/q;->d(Landroid/content/Context;)Lcom/google/firebase/sessions/p;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/sessions/q;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    move-object v3, v15

    invoke-direct/range {v3 .. v9}, Lcom/google/firebase/sessions/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/sessions/p;Ljava/util/List;)V

    const-string v0, "2.0.7"

    move-object v7, v14

    move-object v8, v10

    move-object v9, v11

    move-object v10, v0

    move-object v11, v12

    move-object v12, v13

    move-object v13, v15

    invoke-direct/range {v7 .. v13}, Lcom/google/firebase/sessions/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/sessions/LogEnvironment;Lcom/google/firebase/sessions/a;)V

    return-object v14
.end method

.method public final c()Lbc/a;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/v;->b:Lbc/a;

    return-object v0
.end method
