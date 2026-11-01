.class public final Lcom/cloud/tmc/miniutils/util/Utils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/Utils$Func1;,
        Lcom/cloud/tmc/miniutils/util/Utils$Supplier;,
        Lcom/cloud/tmc/miniutils/util/Utils$Consumer;,
        Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;,
        Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;
    }
.end annotation


# static fields
.field private static sApp:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/Utils;->init(Landroid/app/Application;)V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reflect failed."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Utils"

    const-string v0, "app is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    if-nez v0, :cond_1

    sput-object p0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->init(Landroid/app/Application;)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->unInit(Landroid/app/Application;)V

    sput-object p0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->init(Landroid/app/Application;)V

    return-void
.end method

.method public static setAppIfNecessary(Landroid/app/Application;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/Utils;->init(Landroid/app/Application;)V

    return-void
.end method
