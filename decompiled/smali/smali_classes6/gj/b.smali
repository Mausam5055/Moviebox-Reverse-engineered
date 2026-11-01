.class public final Lgj/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lgj/b;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgj/b;

    invoke-direct {v0}, Lgj/b;-><init>()V

    sput-object v0, Lgj/b;->a:Lgj/b;

    new-instance v0, Lgj/a;

    invoke-direct {v0}, Lgj/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lgj/b;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lgj/b;->i()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final e()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lgj/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private final f(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_code"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final g(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_configs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final h(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_version"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final i()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "infras_init_config"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Lcom/transsion/base/infras_config/model/ConfigInitData;
    .locals 4

    const-string v0, "sourceVersions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/base/infras_config/model/ConfigLocalState;

    sget-object v3, Lgj/b;->a:Lgj/b;

    invoke-virtual {v2}, Lcom/transsion/base/infras_config/model/ConfigLocalState;->getSourceType()Lcom/transsion/base/infras_config/model/InfrasSourceType;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgj/b;->c(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v2, "globalVersion"

    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/transsion/base/infras_config/model/ConfigInitData;

    invoke-direct {v2, p1, v0, v1}, Lcom/transsion/base/infras_config/model/ConfigInitData;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V

    return-object v2
.end method

.method public final c(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;
    .locals 5

    const-string v0, "sourceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-direct {p0, p1}, Lgj/b;->g(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "parseString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-direct {p0, p1}, Lgj/b;->h(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-direct {p0, p1}, Lgj/b;->f(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->valueOf(Ljava/lang/String;)Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    :cond_2
    check-cast v3, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    new-instance v4, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    invoke-direct {v4, p1, v2, v1, v3}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;-><init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v4

    :catchall_1
    return-object v0
.end method

.method public final d()J
    .locals 4

    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "lastInitTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j(Lcom/transsion/base/infras_config/model/ConfigInitData;J)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lgj/b;->k(J)V

    invoke-virtual {p1}, Lcom/transsion/base/infras_config/model/ConfigInitData;->getVersion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p3, Lgj/b;->a:Lgj/b;

    invoke-direct {p3}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object p3

    const-string v0, "globalVersion"

    invoke-virtual {p3, v0, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/base/infras_config/model/ConfigInitData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    invoke-virtual {p2}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->getSourceType()Lcom/transsion/base/infras_config/model/InfrasSourceType;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->getConfigs()Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lgj/b;->a:Lgj/b;

    invoke-direct {v1}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-direct {v1, p3}, Lgj/b;->g(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lgj/b;->a:Lgj/b;

    invoke-direct {v1}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-direct {v1, p3}, Lgj/b;->h(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->getCode()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lgj/b;->a:Lgj/b;

    invoke-direct {v0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-direct {v0, p3}, Lgj/b;->f(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final k(J)V
    .locals 2

    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "lastInitTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const-string v1, "localStates"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lgj/b;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    return-void
.end method
