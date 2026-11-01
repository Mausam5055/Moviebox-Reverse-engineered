.class public Lcom/aliyun/private_service/PrivateService;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/aliyun/private_service/PrivateService;->nInitService(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static initService(Landroid/content/Context;[B)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/aliyun/private_service/PrivateService;->nInitService(Ljava/lang/Object;[B)V

    :cond_0
    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private static native nInitService(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method private static native nInitService(Ljava/lang/Object;[B)V
.end method

.method private static native nPreInitService(Ljava/lang/Object;)V
.end method

.method public static preInitService(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/private_service/PrivateService;->nPreInitService(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
