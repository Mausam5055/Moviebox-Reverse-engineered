.class public final Lcom/wecloud/load/lib/DySoLoadManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/wecloud/load/lib/DySoLoadManager;

.field private static b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wecloud/load/lib/DySoLoadManager;

    invoke-direct {v0}, Lcom/wecloud/load/lib/DySoLoadManager;-><init>()V

    sput-object v0, Lcom/wecloud/load/lib/DySoLoadManager;->a:Lcom/wecloud/load/lib/DySoLoadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/wecloud/load/lib/DySoLoadManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/DySoLoadManager;->g(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private final g(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p3, "load_so"

    :cond_1
    sget-object v0, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0, p1, p3, p2}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic h(Lcom/wecloud/load/lib/DySoLoadManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/DySoLoadManager;->g(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonSoInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/wecloud/load/lib/DySoLoadManager;->c(Landroid/content/Context;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getEnableService()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/wecloud/load/lib/o;->f:Lcom/wecloud/load/lib/o$a;

    invoke-virtual {v0}, Lcom/wecloud/load/lib/o$a;->a()Lcom/wecloud/load/lib/o;

    move-result-object v0

    new-instance v1, Lcom/wecloud/load/lib/DySoLoadManager$a;

    invoke-direct {v1, v0, p1}, Lcom/wecloud/load/lib/DySoLoadManager$a;-><init>(Lcom/wecloud/load/lib/o;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/wecloud/load/lib/DySoLoadManager;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u6790\u540e\u7684SO\u914d\u7f6e\u6570\u91cf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoLoadManagerExample"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/wecloud/load/lib/SoDownloadRequest;

    sget-object v3, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-direct {v2, p2, v3}, Lcom/wecloud/load/lib/SoDownloadRequest;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V

    invoke-virtual {v2}, Lcom/wecloud/load/lib/SoDownloadRequest;->isValid()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, v1, v2}, Lcom/wecloud/load/lib/o;->i(Landroid/content/Context;Lcom/wecloud/load/lib/h;Lcom/wecloud/load/lib/SoDownloadRequest;)V

    goto :goto_1

    :cond_0
    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SoLoadManagerExample"

    const-string v5, "solist \u914d\u7f6e\u65e0\u6548 \u4e3anull\u6216\u8005\u7f3a\u5931\u5173\u952e\u4fe1\u606f\uff0c\u4e0d\u542f\u52a8\u670d\u52a1"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getEnableService()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getEnableService()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u6ee1\u8db3\u6761\u4ef6 \u63a7\u5236\u914d\u7f6econtrolConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " \u63a7\u5236\u5f00\u5173="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " \u9000\u51fa\u5f00\u5173="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public final c(Landroid/content/Context;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    sget-object v0, Lgz/b;->a:Lgz/b;

    invoke-virtual {v0}, Lgz/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "so_load_control_config"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "SoLoadManagerExample"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    goto :goto_1

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "SoLoadManagerExample"

    const-string v3, "MMKV \u4e2d\u4e0d\u5b58\u5728\u914d\u7f6e"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    sput-object v0, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_2

    :goto_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "SoLoadManagerExample"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_2
    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 9

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v7, "arm64-v8a"

    invoke-static {v6, v7, v2, v5, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "v8a"

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v0

    move v3, v2

    :goto_1
    const-string v6, "v7a"

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v8, "armeabi-v7a"

    invoke-static {v7, v8, v2, v5, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-object v0, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final f(Ljava/lang/String;)Ljava/util/List;
    .locals 12

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wecloud/load/lib/DySoLoadManager;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u8bbe\u5907CPU\u67b6\u6784: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoLoadManagerExample"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/wecloud/load/lib/DySoLoadManager$parseAndFilterConfig$type$1;

    invoke-direct {v3}, Lcom/wecloud/load/lib/DySoLoadManager$parseAndFilterConfig$type$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "fromJson(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wecloud/load/lib/bean/SoConfigGroup;

    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getVariants()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wecloud/load/lib/bean/CpuVariant;

    if-eqz v4, :cond_1

    new-instance v11, Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v4}, Lcom/wecloud/load/lib/bean/CpuVariant;->getZip_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/wecloud/load/lib/bean/CpuVariant;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getSo_names()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getMethod_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getInput()Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/wecloud/load/lib/bean/SoZipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_0

    invoke-interface {v1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e3\u6790JSON\u914d\u7f6e\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "so_load_control_config"

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lgz/b;->a:Lgz/b;

    invoke-virtual {v1}, Lgz/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    sput-object v0, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\u5df2\u4fdd\u5b58\u914d\u7f6e\u5230 MMKV: "

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/wecloud/load/lib/o;->f:Lcom/wecloud/load/lib/o$a;

    invoke-virtual {v0}, Lcom/wecloud/load/lib/o$a;->a()Lcom/wecloud/load/lib/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wecloud/load/lib/o;->k(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    :goto_1
    const/4 p1, 0x0

    sput-object p1, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    sget-object p1, Lgz/b;->a:Lgz/b;

    invoke-virtual {p1}, Lgz/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u914d\u7f6e\u5230 MMKV \u5931\u8d25: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadManagerExample"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_3
    return-void
.end method
