.class public Lcom/bytedance/sdk/openadsdk/core/settings/EjP;
.super Ljava/lang/Object;


# static fields
.field private static volatile EjP:I = 0x0

.field private static volatile Sj:Ljava/lang/String; = ""

.field private static TKC:Ljava/lang/String; = null

.field private static volatile sP:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static EjP()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->TKC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->TKC:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->TKC:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->TKC:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Sj(I)I
    .locals 0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->EjP:I

    return p0
.end method

.method static synthetic Sj(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public static Sj()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/AppSetIdAndScope$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/AppSetIdAndScope$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 v0, 0x2

    sput v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->EjP:I

    return-void
.end method

.method public static TKC()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->EjP:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->sP:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->Sj()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public static sP()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->EjP:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->Sj:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->Sj()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic sP(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/settings/EjP;->sP:Ljava/lang/String;

    return-object p0
.end method
