.class public final Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;
.super Landroid/os/Handler;


# annotations
.annotation build Lcom/tencent/tinker/anno/Keep;
.end annotation


# instance fields
.field private final mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/entry/ApplicationLike;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    return-void
.end method

.method private static dummyThrowExceptionMethod()V
    .locals 1

    const-class v0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private handleMessageImpl(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should not be here."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/entry/ApplicationLike;->getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    invoke-virtual {v0}, Lcom/tencent/tinker/entry/ApplicationLike;->mzNightModeUseOf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tinker/entry/ApplicationLike;->getSystemService(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/entry/ApplicationLike;->getResources(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/AssetManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/entry/ApplicationLike;->getAssets(Landroid/content/res/AssetManager;)Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/entry/ApplicationLike;->getBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/entry/ApplicationLike;->getClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    invoke-virtual {p1}, Lcom/tencent/tinker/entry/ApplicationLike;->onTerminate()V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    invoke-virtual {p1}, Lcom/tencent/tinker/entry/ApplicationLike;->onLowMemory()V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/entry/ApplicationLike;->onTrimMemory(I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/entry/ApplicationLike;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    invoke-virtual {p1}, Lcom/tencent/tinker/entry/ApplicationLike;->onCreate()V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->mAppLike:Lcom/tencent/tinker/entry/ApplicationLike;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/entry/ApplicationLike;->onBaseContextAttached(Landroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleMessage_$noinline$(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->dummyThrowExceptionMethod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->handleMessageImpl(Landroid/os/Message;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->handleMessageImpl(Landroid/os/Message;)V

    throw v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/entry/TinkerApplicationInlineFence;->handleMessage_$noinline$(Landroid/os/Message;)V

    return-void
.end method
