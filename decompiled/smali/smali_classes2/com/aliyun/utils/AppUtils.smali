.class public Lcom/aliyun/utils/AppUtils;
.super Ljava/lang/Object;


# static fields
.field private static appName:Ljava/lang/String;

.field private static appNameDecied:Z

.field private static packageName:Ljava/lang/String;

.field private static packageNameDecied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/aliyun/utils/AppUtils;->appNameDecied:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/aliyun/utils/AppUtils;->appName:Ljava/lang/String;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/aliyun/utils/AppUtils;->appName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aliyun/utils/AppUtils;->appNameDecied:Z

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/aliyun/utils/AppUtils;->packageNameDecied:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/aliyun/utils/AppUtils;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/aliyun/utils/AppUtils;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aliyun/utils/AppUtils;->packageNameDecied:Z

    return-object p0
.end method
