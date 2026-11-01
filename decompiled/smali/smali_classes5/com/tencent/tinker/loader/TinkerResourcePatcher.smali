.class Lcom/tencent/tinker/loader/TinkerResourcePatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;
    }
.end annotation


# static fields
.field private static addAssetPathAsSharedLibraryMethod:Ljava/lang/reflect/Method;

.field private static addAssetPathMethod:Ljava/lang/reflect/Method;

.field private static assetsFiled:Ljava/lang/reflect/Field;

.field private static currentActivityThread:Ljava/lang/Object;

.field private static ensureStringBlocksMethod:Ljava/lang/reflect/Method;

.field private static newAssetManager:Landroid/content/res/AssetManager;

.field private static newAssetManagerCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static packageContext:Landroid/content/Context;

.field private static packageResContext:Landroid/content/Context;

.field private static packagesFiled:Ljava/lang/reflect/Field;

.field private static publicSourceDirField:Ljava/lang/reflect/Field;

.field private static references:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static resDir:Ljava/lang/reflect/Field;

.field private static resourceImpls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static resourcePackagesFiled:Ljava/lang/reflect/Field;

.field private static resourcesImplFiled:Ljava/lang/reflect/Field;

.field private static storedPatchedResModifiedTime:J

.field private static stringBlocksField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->isPatchedResModifiedAfterLastLoad(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static checkResUpdate(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "Tinker.ResourcePatcher"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "only_use_to_test_tinker_resource.txt"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/lang/Object;)V

    const-string p0, "checkResUpdate success, found test resource assets file only_use_to_test_tinker_resource.txt"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkResUpdate failed, can\'t find test resource assets file only_use_to_test_tinker_resource.txt e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/lang/Object;)V

    return v1

    :catchall_1
    move-exception p0

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw p0
.end method

.method private static clearPreloadTypedArrayIssue(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Tinker.ResourcePatcher"

    const-string v3, "try to clear typedArray cache!"

    invoke-static {v2, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-class v1, Landroid/content/res/Resources;

    const-string v3, "mTypedArrayPool"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "acquire"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {p0, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPreloadTypedArrayIssue failed, ignore error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static installResourceInsuranceHacks(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "Tinker.ResourcePatcher"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "mH"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const-class v3, Landroid/os/Handler;

    const-string v4, "mCallback"

    invoke-static {v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler$Callback;

    instance-of v5, v4, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;

    if-nez v5, :cond_0

    new-instance v5, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, p1, v4, v6}, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler$Callback;Ljava/lang/Class;)V

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "installResourceInsuranceHacks: already installed, skip rest logic."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string p1, "failed to install resource insurance hack."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static isPatchedResModifiedAfterLastLoad(Ljava/lang/String;)Z
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v3, "Fail to get patched res modified time."

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Tinker.ResourcePatcher"

    invoke-static {v5, p0, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v3, v0

    :goto_0
    cmp-long p0, v3, v0

    if-nez p0, :cond_0

    return v2

    :cond_0
    sget-wide v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->storedPatchedResModifiedTime:J

    cmp-long p0, v3, v0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isResourceCanPatch(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->currentActivityThread:Ljava/lang/Object;

    :try_start_0
    const-string v3, "android.app.LoadedApk"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "android.app.ActivityThread$PackageInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_0
    const-string v4, "mResDir"

    invoke-static {v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resDir:Ljava/lang/reflect/Field;

    const-string v3, "mPackages"

    invoke-static {v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packagesFiled:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "mResourcePackages"

    invoke-static {v2, v4}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcePackagesFiled:Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const-string v4, "Fail to get mResourcePackages field."

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Tinker.ResourcePatcher"

    invoke-static {v6, v2, v4, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v3, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcePackagesFiled:Ljava/lang/reflect/Field;

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "addAssetPath"

    const-class v5, Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Class;

    aput-object v5, v6, v1

    invoke-static {v2, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->shouldAddSharedLibraryAssets(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "addAssetPathAsSharedLibrary"

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v5, v0, v1

    invoke-static {v2, v4, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathAsSharedLibraryMethod:Ljava/lang/reflect/Method;

    :cond_0
    :try_start_2
    const-string v0, "mStringBlocks"

    invoke-static {v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->stringBlocksField:Ljava/lang/reflect/Field;

    const-string v0, "ensureStringBlocks"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->ensureStringBlocksMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    new-array v0, v1, [Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findConstructor(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManagerCtor:Ljava/lang/reflect/Constructor;

    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInstance"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_3
    const-string v2, "mActiveResources"

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    const-string v2, "mResourceReferences"

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    sput-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    :try_start_4
    const-string v2, "mResourceImpls"

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourceImpls:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    sput-object v3, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourceImpls:Ljava/util/Map;

    :goto_2
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "mAssets"

    if-lt v0, v1, :cond_1

    :try_start_5
    const-string v0, "mResourcesImpl"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcesImplFiled:Ljava/lang/reflect/Field;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    invoke-static {p0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->assetsFiled:Ljava/lang/reflect/Field;

    goto :goto_3

    :cond_1
    invoke-static {p0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->assetsFiled:Ljava/lang/reflect/Field;

    :goto_3
    :try_start_6
    const-class p0, Landroid/content/pm/ApplicationInfo;

    const-string v0, "publicSourceDir"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->publicSourceDirField:Ljava/lang/reflect/Field;
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "resource references is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static monkeyPatchExistingResources(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packageContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packageResContext:Landroid/content/Context;

    new-array v4, v0, [Ljava/lang/reflect/Field;

    sget-object v5, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packagesFiled:Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    sget-object v5, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcePackagesFiled:Ljava/lang/reflect/Field;

    aput-object v5, v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_5

    aget-object v6, v4, v5

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    sget-object v7, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->currentActivityThread:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resDir:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resDir:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v5, v2

    goto :goto_0

    :cond_5
    const-string v0, "Tinker.ResourcePatcher"

    if-eqz p2, :cond_6

    const-string p0, "Re-injecting, skip rest logic."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->recordCurrentPatchedResModifiedTime(Ljava/lang/String;)V

    return-void

    :cond_6
    sget-object p2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManagerCtor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/AssetManager;

    sput-object p2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    sget-object v5, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathMethod:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {p1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->recordCurrentPatchedResModifiedTime(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->shouldAddSharedLibraryAssets(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v5, p2

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_9

    aget-object v7, p2, v6

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    sget-object v8, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathAsSharedLibraryMethod:Ljava/lang/reflect/Method;

    sget-object v9, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v7, v10, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAssetPathAsSharedLibrary "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    add-int/2addr v6, v2

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AssetManager add SharedLibrary Fail"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    sget-object p2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->stringBlocksField:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_a

    sget-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->ensureStringBlocksMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {p2, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->ensureStringBlocksMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {p2, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object p2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, "mAssets"

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    :try_start_0
    sget-object v6, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->assetsFiled:Ljava/lang/reflect/Field;

    sget-object v7, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    sget-object v6, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcesImplFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sget-object v7, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    invoke-static {v2}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->clearPreloadTypedArrayIssue(Landroid/content/res/Resources;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_5

    :cond_c
    sget-object p2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourceImpls:Ljava/util/Map;

    if-eqz p2, :cond_12

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, v4

    :cond_d
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_e

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v8, "mResDir"

    invoke-static {v4, v8}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    :cond_e
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_7

    :cond_f
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x23

    if-lt v8, v9, :cond_10

    invoke-virtual {v4, v7, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    if-nez v2, :cond_11

    invoke-static {v6, v5}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    :cond_11
    sget-object v7, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string p1, "Fail to hack resourceImpls field."

    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p2, v2, :cond_13

    :try_start_2
    sget-object p2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->publicSourceDirField:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p2

    const-string v2, "fail to process publicSourceDirField field hack."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_8
    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->checkResUpdate(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-static {p0, p1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->installResourceInsuranceHacks(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_14
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string p1, "checkResInstall failed"

    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not create new AssetManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static recordCurrentPatchedResModifiedTime(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->storedPatchedResModifiedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Tinker.ResourcePatcher"

    const-string v2, "Fail to store patched res modified time."

    invoke-static {v1, p0, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->storedPatchedResModifiedTime:J

    :goto_0
    return-void
.end method

.method private static shouldAddSharedLibraryAssets(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
