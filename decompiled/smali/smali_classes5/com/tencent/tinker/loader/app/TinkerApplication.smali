.class public abstract Lcom/tencent/tinker/loader/app/TinkerApplication;
.super Landroid/app/Application;


# static fields
.field private static final INTENT_PATCH_EXCEPTION:Ljava/lang/String; = "intent_patch_exception"

.field private static final SELF_HOLDER:[Lcom/tencent/tinker/loader/app/TinkerApplication;

.field private static final TINKER_LOADER_METHOD:Ljava/lang/String; = "tryLoad"


# instance fields
.field private final delegateClassName:Ljava/lang/String;

.field private final loaderClassName:Ljava/lang/String;

.field protected mCurrentClassLoader:Ljava/lang/ClassLoader;

.field private mInlineFence:Landroid/os/Handler;

.field private final tinkerFlags:I

.field private final tinkerLoadVerifyFlag:Z

.field protected tinkerResultIntent:Landroid/content/Intent;

.field private final useDelegateLastClassLoader:Z

.field private final useInterpretModeOnSupported32BitSystem:Z

.field private useSafeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/tinker/loader/app/TinkerApplication;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/tinker/loader/app/TinkerApplication;->SELF_HOLDER:[Lcom/tencent/tinker/loader/app/TinkerApplication;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const-string v0, "com.tencent.tinker.entry.DefaultApplicationLike"

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-class v0, Lcom/tencent/tinker/loader/TinkerLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    sget-object v0, Lcom/tencent/tinker/loader/app/TinkerApplication;->SELF_HOLDER:[Lcom/tencent/tinker/loader/app/TinkerApplication;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aput-object p0, v0, v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerFlags:I

    iput-object p2, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->loaderClassName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerLoadVerifyFlag:Z

    iput-boolean p5, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->useDelegateLastClassLoader:Z

    iput-boolean p6, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->useInterpretModeOnSupported32BitSystem:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private createInlineFence(Landroid/app/Application;ILjava/lang/String;ZJJLandroid/content/Intent;)Landroid/os/Handler;
    .locals 13

    move-object v1, p0

    const/4 v0, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/tencent/tinker/loader/app/TinkerApplication;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v9, p3

    invoke-static {v9, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Landroid/app/Application;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    aput-object v10, v9, v2

    const-class v10, Landroid/content/Intent;

    aput-object v10, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object v9, v5, v6

    aput-object v10, v5, v4

    aput-object v11, v5, v3

    aput-object v12, v5, v2

    aput-object p9, v5, v0

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.tencent.tinker.entry.TinkerApplicationInlineFence"

    iget-object v3, v1, Lcom/tencent/tinker/loader/app/TinkerApplication;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.tencent.tinker.entry.ApplicationLike"

    iget-object v4, v1, Lcom/tencent/tinker/loader/app/TinkerApplication;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v3, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v2, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v3, "createInlineFence failed"

    invoke-direct {v2, v3, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance()Lcom/tencent/tinker/loader/app/TinkerApplication;
    .locals 3

    sget-object v0, Lcom/tencent/tinker/loader/app/TinkerApplication;->SELF_HOLDER:[Lcom/tencent/tinker/loader/app/TinkerApplication;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TinkerApplication is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadTinker()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tinker/loader/app/TinkerApplication;

    :try_start_0
    iget-object v3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->loaderClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "tryLoad"

    new-array v5, v0, [Ljava/lang/Class;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;

    const/16 v2, -0x14

    invoke-static {v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;

    const-string v2, "intent_patch_exception"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/tencent/tinker/loader/TinkerUncaughtHandler;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/loader/TinkerUncaughtHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tinker/loader/app/TinkerApplication;->onBaseContextAttached(Landroid/content/Context;JJ)V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callGetAssets(Landroid/os/Handler;Landroid/content/res/AssetManager;)Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callGetBaseContext(Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callGetClassLoader(Landroid/os/Handler;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callGetResources(Landroid/os/Handler;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, p1, v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callGetSystemService(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callGetTheme(Landroid/os/Handler;Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getTinkerFlags()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerFlags:I

    return v0
.end method

.method public isTinkerLoadVerifyFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerLoadVerifyFlag:Z

    return v0
.end method

.method public isUseDelegateLastClassLoader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->useDelegateLastClassLoader:Z

    return v0
.end method

.method public isUseInterpretModeOnSupported32BitSystem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->useInterpretModeOnSupported32BitSystem:Z

    return v0
.end method

.method public mzNightModeUseOf()I
    .locals 1
    .annotation build Lcom/tencent/tinker/anno/Keep;
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callMZNightModeUseOf(Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method protected onBaseContextAttached(Landroid/content/Context;JJ)V
    .locals 12

    move-object v11, p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->loadTinker()V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v11, Lcom/tencent/tinker/loader/app/TinkerApplication;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    iget v3, v11, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerFlags:I

    iget-object v4, v11, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateClassName:Ljava/lang/String;

    iget-boolean v5, v11, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerLoadVerifyFlag:Z

    iget-object v10, v11, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;

    move-object v1, p0

    move-object v2, p0

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/tencent/tinker/loader/app/TinkerApplication;->createInlineFence(Landroid/app/Application;ILjava/lang/String;ZJJLandroid/content/Intent;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v11, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    move-object v1, p1

    invoke-static {v0, p1}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callOnBaseContextAttached(Landroid/os/Handler;Landroid/content/Context;)V

    iget-boolean v0, v11, Lcom/tencent/tinker/loader/app/TinkerApplication;->useSafeMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setSafeModeCount(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/tencent/tinker/loader/TinkerRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callOnConfigurationChanged(Landroid/os/Handler;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callOnCreate(Landroid/os/Handler;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callOnLowMemory(Landroid/os/Handler;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callOnTerminate(Landroid/os/Handler;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->mInlineFence:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/tencent/tinker/loader/app/TinkerInlineFenceAction;->callOnTrimMemory(Landroid/os/Handler;I)V

    return-void
.end method

.method public setUseSafeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->useSafeMode:Z

    return-void
.end method
