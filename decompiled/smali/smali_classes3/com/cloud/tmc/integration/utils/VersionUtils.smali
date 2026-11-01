.class public final Lcom/cloud/tmc/integration/utils/VersionUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/VersionUtils;",
        "",
        "()V",
        "FRAMEWORK_VERSION_OFFLIEN_SUFFIX",
        "",
        "LAST_SUPPORT_H5_PAGE_STACK_FRAMEWORK_VERSION",
        "compareVersion",
        "",
        "newVersion",
        "oldVersion",
        "isSupportH5PageStack",
        "isSupportWarmupFramework",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final FRAMEWORK_VERSION_OFFLIEN_SUFFIX:Ljava/lang/String; = "-offline"

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/VersionUtils;

.field public static final LAST_SUPPORT_H5_PAGE_STACK_FRAMEWORK_VERSION:Ljava/lang/String; = "5.1.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/VersionUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/VersionUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/VersionUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/VersionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    const-string v1, "newVersion"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "oldVersion"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    invoke-interface {v2, p1}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getMiniAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getMiniAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v4, v1

    move v5, v4

    :cond_1
    if-lt v4, v0, :cond_2

    if-ge v5, v2, :cond_6

    :cond_2
    move v6, v1

    :goto_0
    const/16 v7, 0x2e

    if-ge v4, v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_3

    mul-int/lit8 v6, v6, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x30

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v8, v1

    :goto_1
    if-ge v5, v2, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v7, :cond_4

    mul-int/lit8 v8, v8, 0xa

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x30

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-eq v6, v8, :cond_1

    if-le v6, v8, :cond_5

    move v1, v3

    :cond_5
    return v1

    :goto_2
    const-string p2, "compareVersion"

    const-string v0, "compareVersion error"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return v1
.end method

.method public final isSupportH5PageStack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "oldVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/integration/utils/VersionUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isSupportWarmupFramework(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "newVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "-offline"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "-offline"

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/VersionUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
