.class public final Lcom/tencent/tinker/loader/TinkerDexOptimizer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/TinkerDexOptimizer$StreamConsumer;,
        Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;,
        Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;
    }
.end annotation


# static fields
.field private static final sEmptyResultReceiver:Landroid/os/ResultReceiver;

.field private static final sHandler:Landroid/os/Handler;

.field private static final sPMSBinderProxy:[Landroid/os/IBinder;

.field private static final sPerformDexOptSecondaryTransactionCode:[I

.field private static final sSynchronizedPMCache:[Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, -0x1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sPerformDexOptSecondaryTransactionCode:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sPMSBinderProxy:[Landroid/os/IBinder;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sHandler:Landroid/os/Handler;

    new-instance v4, Landroid/os/ResultReceiver;

    invoke-direct {v4, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    sput-object v4, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sEmptyResultReceiver:Landroid/os/ResultReceiver;

    new-array v1, v1, [Landroid/content/pm/PackageManager;

    aput-object v0, v1, v3

    sput-object v1, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sSynchronizedPMCache:[Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->interpretDex2Oat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->createFakeODexPathStructureOnDemand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->triggerPMDexOptOnDemand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->waitUntilFileGeneratedOrTimeout(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method private static createFakeODexPathStructureOnDemand(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x1d

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Tinker.ParallelDex"

    const-string v2, "Creating fake odex path structure."

    invoke-static {v1, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private static executePMSShellCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Tinker.ParallelDex"

    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->getPMSBinderProxy(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "[+] Execute shell cmd, args: %s"

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-static {v1, v5, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v7, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    sget-object v7, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    sget-object v7, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget-object p1, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sEmptyResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    const p1, 0x5f434d44

    invoke-interface {p0, p1, v5, v6, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    const-string p0, "[+] Execute shell cmd done."

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    :goto_0
    move-object v4, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v6, v4

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v6, v4

    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failure on executing shell cmd."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private static getPMSBinderProxy(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sPMSBinderProxy:[Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    new-array v4, p0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array p0, p0, [Ljava/lang/Object;

    const-string v3, "package"

    aput-object v3, p0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    aput-object p0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    return-object p0

    :catchall_1
    move-exception p0

    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static final getSynchronizedPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sSynchronizedPMCache:[Landroid/content/pm/PackageManager;

    monitor-enter v3

    :try_start_0
    aget-object v4, v3, v2

    if-eqz v4, :cond_1

    sget-object v4, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sPMSBinderProxy:[Landroid/os/IBinder;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    aget-object v5, v4, v2

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object p0, v3, v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v4

    goto :goto_1

    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->getPMSBinderProxy(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lcom/tencent/tinker/loader/TinkerDexOptimizer$2;

    invoke-direct {v7, v4}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$2;-><init>(Landroid/os/IBinder;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string v5, "android.content.pm.IPackageManager$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "asInterface"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const/4 v4, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "android.app.ApplicationPackageManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    instance-of v6, p0, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_2

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    :cond_2
    const-string v6, "android.content.pm.IPackageManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v7, v8, v2

    aput-object v6, v8, v1

    invoke-static {v5, v8}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object v4, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;

    aput-object p0, v3, v2
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v3

    return-object p0

    :goto_2
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method private static interpretDex2Oat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "release interpret Lock error"

    const-string v3, "Tinker.ParallelDex"

    const-string v4, "--runtime-arg"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const-string v7, "interpret.lock"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->getFileLock(Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "dex2oat"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_1

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "-classpath"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "&"

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dex-file="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--oat-file="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "--instruction-set="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x19

    if-le v7, p0, :cond_2

    const-string p0, "--compiler-filter=quicken"

    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string p0, "--compiler-filter=interpret-only"

    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance p0, Ljava/lang/ProcessBuilder;

    invoke-direct {p0, v6}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$StreamConsumer;->consumeInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$StreamConsumer;->consumeInputStream(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_4

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {v3, v2, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dex2oat works unsuccessfully, exit code: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception p0

    :try_start_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dex2oat is interrupted, msg: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p0

    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {v3, v2, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    throw p0
.end method

.method public static optimizeAll(Landroid/content/Context;Ljava/util/Collection;Ljava/io/File;ZZLcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "ZZ",
            "Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->optimizeAll(Landroid/content/Context;Ljava/util/Collection;Ljava/io/File;ZZLjava/lang/String;ZLcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;)Z

    move-result p0

    return p0
.end method

.method public static optimizeAll(Landroid/content/Context;Ljava/util/Collection;Ljava/io/File;ZZLjava/lang/String;ZLcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "ZZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerDexOptimizer$1;

    invoke-direct {v1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/io/File;

    new-instance v1, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;ZZLjava/lang/String;ZLcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;)V

    invoke-virtual {v1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->run()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static performBgDexOptJob(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bg-dexopt-job"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->executePMSShellCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private static performDexOptSecondary(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0x1f

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "verify"

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v0, "speed-profile"

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "compile"

    const-string v2, "-f"

    const-string v3, "--secondary-dex"

    const-string v4, "-m"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->executePMSShellCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private static performDexOptSecondaryByTransactionCode(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->sPerformDexOptSecondaryTransactionCode:[I

    monitor-enter v2

    :try_start_0
    aget v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    :try_start_1
    const-class v3, Ljava/lang/Class;

    const-string v4, "getDeclaredField"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v3, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v4, "android.content.pm.IPackageManager$Stub"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "TRANSACTION_performDexOptSecondary"

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot query transaction code of performDexOptSecondary."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, "Tinker.ParallelDex"

    const-string v4, "[+] performDexOptSecondaryByTransactionCode, code: %s"

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v3, v4, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->getPMSBinderProxy(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v3

    :try_start_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v3}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p0, 0x1f

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "verify"

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, "speed-profile"

    :goto_1
    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    aget p0, v2, v1

    invoke-interface {v3, p0, v4, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p0, :cond_3

    :try_start_6
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "Tinker.ParallelDex"

    const-string v0, "[!] System API return false."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3
    move-exception p0

    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_3
    :try_start_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Binder transaction failure."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_3
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_4
    move-exception p0

    move-object v4, v5

    :goto_4
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_5
    throw p0

    :goto_5
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0
.end method

.method private static registerDexModule(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->getSynchronizedPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v3, "android.content.pm.PackageManager$DexModuleRegisterCallback"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "registerDexModule"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v3, v5, v0

    invoke-static {p0, v4, v5}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x0

    aput-object p1, v2, v0

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static triggerPMDexOptOnDemand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x1d

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v0

    const-string v2, "Tinker.ParallelDex"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p0, "[+] Not API 29, 30 and newer device, skip triggering dexopt."

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "[+] Hit target device, do dexopt logic now."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "[+] Oat file %s should be valid, skip triggering dexopt."

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v4, v3

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    invoke-static {p0, p2, v0, v1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->triggerSecondaryDexOpt(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    add-int/2addr v4, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "huawei"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "honor"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No odex file was generated after calling performDexOptSecondary"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    move p2, v3

    :goto_2
    const/4 v4, 0x5

    if-ge p2, v4, :cond_7

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->registerDexModule(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    goto :goto_3

    :catchall_0
    move-exception v4

    const-string v5, "[-] Error."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-int/2addr p2, v1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No odex file was generated after calling registerDexModule"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    return-void
.end method

.method private static triggerSecondaryDexOpt(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-string v1, "[-] Error."

    const-string v2, "Tinker.ParallelDex"

    :try_start_0
    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->performDexOptSecondary(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    return p1

    :catchall_0
    move-exception v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->performBgDexOptJob(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    return p1

    :catchall_1
    move-exception v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->performDexOptSecondaryByTransactionCode(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    return p1

    :catchall_2
    move-exception v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Long;

    aput-object p3, p1, v0

    invoke-static {p0, p2, p1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->waitUntilFileGeneratedOrTimeout(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static varargs waitUntilFileGeneratedOrTimeout(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)Z
    .locals 8

    const/4 p0, 0x2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/Long;

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v2

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v1

    const-wide/16 v3, 0xfa0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, p0

    const-wide/16 v3, 0x1f40

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, p2, v4

    const-wide/16 v3, 0x3e80

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, p2, v4

    const-wide/16 v3, 0x7d00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, p2, v4

    :goto_0
    move v3, v2

    :goto_1
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v4

    const-string v5, "Tinker.ParallelDex"

    if-nez v4, :cond_1

    array-length v4, p2

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, p0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v3, v6, v1

    const-string v3, "[!] File %s does not exist after waiting %s time(s), wait again."

    invoke-static {v5, v3, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "[+] File %s was found."

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {v5, p0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    const-string p1, "[-] File %s does not exist after waiting for %s times."

    invoke-static {v5, p1, p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
