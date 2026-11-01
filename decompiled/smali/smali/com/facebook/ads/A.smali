.class public Lcom/facebook/ads/A;
.super Ljava/lang/Object;


# static fields
.field private static final executor:Ljava/util/concurrent/ExecutorService;

.field private static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/A;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/A;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a()Landroid/os/Handler;
.end method

.method private static native b(Landroid/app/Activity;ZLjava/lang/String;)V
.end method

.method public static native c(Landroid/app/Activity;)V
.end method

.method static native d()Lorg/json/JSONObject;
.end method

.method private static native dp(Landroid/content/Context;I)I
.end method

.method static native e(Landroid/app/Activity;Lorg/json/JSONObject;)V
.end method
