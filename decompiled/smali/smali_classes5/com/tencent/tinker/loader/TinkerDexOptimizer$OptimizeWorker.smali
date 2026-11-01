.class Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/TinkerDexOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptimizeWorker"
.end annotation


# static fields
.field private static patchClassLoaderStrongRef:Ljava/lang/ClassLoader;


# instance fields
.field private final callback:Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;

.field private final context:Landroid/content/Context;

.field private final dexFile:Ljava/io/File;

.field private final optimizedDir:Ljava/io/File;

.field private final targetISA:Ljava/lang/String;

.field private final useDLC:Z

.field private final useEmergencyMode:Z

.field private final useInterpretMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;ZZLjava/lang/String;ZLcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iput-object p3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    iput-boolean p4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useInterpretMode:Z

    iput-boolean p5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useDLC:Z

    iput-object p8, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;

    iput-object p6, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->targetISA:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useEmergencyMode:Z

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useEmergencyMode:Z

    return p0
.end method


# virtual methods
.method run()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Tinker.ParallelDex"

    :try_start_0
    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dex file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not exist!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;->onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V

    return v1

    :catchall_0
    move-exception v3

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-interface {v3, v4, v5}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;->onStart(Ljava/io/File;Ljava/io/File;)V

    :cond_1
    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isArkHotRuning()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useInterpretMode:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->targetISA:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/tinker/loader/app/TinkerApplication;->getInstance()Lcom/tencent/tinker/loader/app/TinkerApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tinker/loader/app/TinkerApplication;->isUseInterpretModeOnSupported32BitSystem()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x15

    const/16 v5, 0x19

    invoke-static {v4, v5, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVersionInRange(IIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->is32BitEnv()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    :try_start_1
    const-string v4, "dexopt with interpret mode on 32bit supported system was enabled."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->targetISA:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_2
    const-string v5, "exception occurred on dexopt triggering."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "interpret dexopt failure, compensate with system method."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    goto :goto_1

    :cond_3
    const/16 v4, 0x1a

    invoke-static {v4, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x1d

    invoke-static {v4, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->access$100(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    iget-boolean v6, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useDLC:Z

    iget-object v7, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/tencent/tinker/loader/NewClassLoaderInjector;->triggerDex2Oat(Landroid/content/Context;Ljava/io/File;Z[Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    sput-object v4, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->patchClassLoaderStrongRef:Ljava/lang/ClassLoader;

    new-instance v4, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;

    invoke-direct {v4, p0, v3}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;-><init>(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useEmergencyMode:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/Thread;

    const-string v6, "TinkerDex2oatTrigger"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    iget-boolean v6, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->useDLC:Z

    iget-object v7, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/tencent/tinker/loader/NewClassLoaderInjector;->triggerDex2Oat(Landroid/content/Context;Ljava/io/File;Z[Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    sput-object v4, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->patchClassLoaderStrongRef:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    :cond_7
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->shouldAcceptEvenIfIllegal(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Odex file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-interface {v4, v5, v6, v3}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;->onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V

    :cond_9
    return v1

    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;

    if-eqz v3, :cond_b

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-interface {v3, v5, v6, v4}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;->onSuccess(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    return v0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to optimize dex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {v2, v4, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-interface {v0, v2, v4, v3}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;->onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V

    :cond_c
    return v1
.end method
