.class public Lcom/transsion/al/ka/KaManager;
.super Ljava/lang/Object;


# static fields
.field public static final NOTIFICATION_GROUP_FULLSCREEN:Ljava/lang/String; = "fullScreen"

.field public static final TAG:Ljava/lang/String; = "KaManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAutoStartList(Landroid/content/Context;)V
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/transsion/al/ka/SystemApiUtil;->setAutoStartEnable(Landroid/app/ActivityManager;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/transsion/al/ka/SystemApiUtil;->isItel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/al/ka/SystemApiUtil;->setForbiddenAutoRunPackages(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/transsion/al/ka/SystemApiUtil;->setForbiddenLinkRunPackages(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private static addCleanProtectList(Landroid/content/Context;)V
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/transsion/al/ka/SystemApiUtil;->setCleanProtect(Landroid/app/ActivityManager;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "KaManager"

    :try_start_0
    invoke-static {p0}, Lcom/transsion/al/ka/KaManager;->addAutoStartList(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/al/ka/KaManager;->addCleanProtectList(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/al/ka/AccountUtils;->autoSyncStart(Landroid/content/Context;)V

    const-string p0, "hook auto live success"

    invoke-static {v0, p0}, Lcom/transsion/al/ka/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/transsion/al/ka/c;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
