.class public final Ldy/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldy/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldy/a;

    invoke-direct {v0}, Ldy/a;-><init>()V

    sput-object v0, Ldy/a;->a:Ldy/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)J
    .locals 4

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v2, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "coordinatorInterval"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p1, p2

    :goto_0
    int-to-long v2, p1

    mul-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    int-to-long p1, p2

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "coordinatorPriority"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AdSceneCoordinator"

    const-string v3, "initCoordinatorAdScenes"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lii/b;->a:Lii/b;

    new-instance v2, Lii/a;

    const-string v3, "TrendingTwoLevelloftScene"

    invoke-virtual {v0, v3, v4}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v3, v4}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-direct {v2, v5, v6, v7}, Lii/a;-><init>(IJ)V

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v3, Lii/a;

    const-string v5, "MainDialogInterstitialScene"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v5, v4}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-direct {v3, v7, v8, v9}, Lii/a;-><init>(IJ)V

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-instance v5, Lii/a;

    const-string v7, "HotStartScene"

    invoke-virtual {v0, v7, v6}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v0, v7, v4}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-direct {v5, v8, v9, v10}, Lii/a;-><init>(IJ)V

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-instance v7, Lii/a;

    const-string v8, "LocalVideoBackInterstitialV2Scene"

    invoke-virtual {v0, v8, v6}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v8, v4}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v10

    invoke-direct {v7, v9, v10, v11}, Lii/a;-><init>(IJ)V

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-instance v8, Lii/a;

    const/4 v9, 0x2

    const-string v10, "AppInstallTip"

    invoke-virtual {v0, v10, v9}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0x12c

    invoke-virtual {v0, v10, v12}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v13

    invoke-direct {v8, v11, v13, v14}, Lii/a;-><init>(IJ)V

    invoke-static {v10, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v10, Lii/a;

    const/4 v11, 0x3

    const-string v13, "MemberActivateTip"

    invoke-virtual {v0, v13, v11}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v14

    move-object v15, v7

    invoke-virtual {v0, v13, v12}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-direct {v10, v14, v6, v7}, Lii/a;-><init>(IJ)V

    invoke-static {v13, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-instance v7, Lii/a;

    const/4 v10, 0x4

    const-string v13, "MemberPUSH"

    invoke-virtual {v0, v13, v10}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v0, v13, v4}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v10

    invoke-direct {v7, v14, v10, v11}, Lii/a;-><init>(IJ)V

    invoke-static {v13, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-instance v10, Lii/a;

    const/4 v11, 0x5

    const-string v13, "StreamerIconAdScene"

    invoke-virtual {v0, v13, v11}, Ldy/a;->b(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v0, v13, v12}, Ldy/a;->a(Ljava/lang/String;I)J

    move-result-wide v11

    invoke-direct {v10, v14, v11, v12}, Lii/a;-><init>(IJ)V

    invoke-static {v13, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v11, 0x8

    new-array v11, v11, [Lkotlin/Pair;

    aput-object v2, v11, v4

    const/4 v2, 0x1

    aput-object v3, v11, v2

    aput-object v5, v11, v9

    const/4 v2, 0x3

    aput-object v15, v11, v2

    const/4 v2, 0x4

    aput-object v8, v11, v2

    const/4 v2, 0x5

    aput-object v6, v11, v2

    const/4 v2, 0x6

    aput-object v7, v11, v2

    const/4 v2, 0x7

    aput-object v10, v11, v2

    invoke-static {v11}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lii/b;->i(Ljava/util/Map;)V

    return-void
.end method
