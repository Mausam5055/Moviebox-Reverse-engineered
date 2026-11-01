.class public final Lcom/vungle/ads/internal/task/CleanupJob;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/task/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/CleanupJob$a;
    }
.end annotation


# static fields
.field private static final AD_ID_KEY:Ljava/lang/String; = "AD_ID_KEY"

.field public static final Companion:Lcom/vungle/ads/internal/task/CleanupJob$a;

.field public static final TAG:Ljava/lang/String; = "CleanupJob"


# instance fields
.field private final context:Landroid/content/Context;

.field private final pathProvider:Lcom/vungle/ads/internal/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/task/CleanupJob$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/CleanupJob$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/task/CleanupJob;->Companion:Lcom/vungle/ads/internal/task/CleanupJob$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/p;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    return-void
.end method

.method private final checkIfSdkUpgraded()V
    .locals 5

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/task/CleanupJob$checkIfSdkUpgraded$$inlined$inject$1;

    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/task/CleanupJob$checkIfSdkUpgraded$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/ads/internal/task/CleanupJob;->checkIfSdkUpgraded$lambda-3(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "VERSION_CODE"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/ads/internal/persistence/b;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0x11364

    if-ge v1, v2, :cond_4

    const v4, 0x11170

    if-ge v1, v4, :cond_0

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV6Data()V

    :cond_0
    const v4, 0x111d4

    if-ge v1, v4, :cond_1

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV700Data()V

    :cond_1
    const v4, 0x1129d

    if-ge v1, v4, :cond_2

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV730TempData()V

    :cond_2
    if-ge v1, v2, :cond_3

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV742TpatData()V

    :cond_3
    invoke-static {v0}, Lcom/vungle/ads/internal/task/CleanupJob;->checkIfSdkUpgraded$lambda-3(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;I)Lcom/vungle/ads/internal/persistence/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    :cond_4
    return-void
.end method

.method private static final checkIfSdkUpgraded$lambda-3(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/persistence/b;",
            ">;)",
            "Lcom/vungle/ads/internal/persistence/b;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/persistence/b;

    return-object p0
.end method

.method private final dropV6Data()V
    .locals 5

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "CleanupJob"

    const-string v2, "CleanupJob: drop old files data"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "vungle_db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-journal"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :goto_0
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "com.vungle.sdk"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cache_path"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x18

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "{\n            context.noBackupFilesDir\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "vungle_settings"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V

    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method private final dropV700Data()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "vungle"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V

    return-void
.end method

.method private final dropV730TempData()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/util/p;->getSharedPrefsDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "vungleSettings"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/util/p;->getSharedPrefsDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "failedTpatSet"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v2, "CleanupJob"

    const-string v3, "Failed to delete temp data"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final dropV742TpatData()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "failedTpats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "failedGenericTpats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v2, "CleanupJob"

    const-string v3, "Failed to delete 742 tpat data"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getPathProvider()Lcom/vungle/ads/internal/util/p;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    return-object v0
.end method

.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/d;)I
    .locals 3

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobRunner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/p;->getDownloadDir()Ljava/io/File;

    move-result-object p2

    const-string v0, "AD_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/util/p;->getDownloadsDirForAd(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "CleanupJob"

    const-string v2, "CleanupJob: Current directory snapshot"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->checkIfSdkUpgraded()V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/g;->deleteContents(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/vungle/ads/internal/util/g;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 p1, 0x0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
