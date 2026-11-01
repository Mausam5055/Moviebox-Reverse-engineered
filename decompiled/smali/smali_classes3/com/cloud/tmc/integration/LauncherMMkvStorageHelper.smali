.class public final Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000bR\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;",
        "",
        "()V",
        "getLauncherMultiMMKV",
        "Lcom/tencent/mmkv/MMKV;",
        "getGetLauncherMultiMMKV",
        "()Lcom/tencent/mmkv/MMKV;",
        "multiMMKV",
        "getNewsOptionPopShow",
        "",
        "getSelectLanguage",
        "",
        "putNewsOptionPopShow",
        "",
        "showStatus",
        "putSelectLanguage",
        "selectLanguage",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;

.field private static multiMMKV:Lcom/tencent/mmkv/MMKV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->INSTANCE:Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;
    .locals 4

    sget-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->multiMMKV:Lcom/tencent/mmkv/MMKV;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/integration/b;->a(Landroid/app/Application;)Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files/mmkv/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zeroscreen_sp_file_nametrue"

    const/4 v3, 0x2

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/mmkv/MMKV;->L(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "mmkvWithID(\n            \u2026dir\n                    )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->multiMMKV:Lcom/tencent/mmkv/MMKV;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "getLauncherMultiMMKV error"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    sget-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->multiMMKV:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_2

    const-string v0, "multiMMKV"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object v1, v0

    :goto_3
    return-object v1
.end method

.method public final getNewsOptionPopShow()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "zs_key_card_news_options_pop_show"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public final getSelectLanguage()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "user_select_language"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public final putNewsOptionPopShow(Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "zs_key_card_news_options_pop_show"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "putSelectLanguage"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final putSelectLanguage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "selectLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "user_select_language"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "putSelectLanguage"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
