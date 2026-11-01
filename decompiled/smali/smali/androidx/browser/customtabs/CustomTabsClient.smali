.class public abstract Landroidx/browser/customtabs/CustomTabsClient;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lc/b;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc/b;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient;->a:Lc/b;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/f;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/f;->setApplicationContext(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x21

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private b(Landroidx/browser/customtabs/c;)Lc/a$a;
    .locals 1

    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$2;

    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/c;)V

    return-object v0
.end method

.method private d(Landroidx/browser/customtabs/c;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/j;
    .locals 3

    invoke-direct {p0, p1}, Landroidx/browser/customtabs/CustomTabsClient;->b(Landroidx/browser/customtabs/c;)Lc/a$a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->a:Lc/b;

    invoke-interface {v2, p1, v1}, Lc/b;->d(Lc/a;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient;->a:Lc/b;

    invoke-interface {v1, p1}, Lc/b;->q(Lc/a;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroidx/browser/customtabs/j;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient;->a:Lc/b;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->b:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/browser/customtabs/j;-><init>(Lc/b;Lc/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    :catch_0
    return-object v0
.end method


# virtual methods
.method public c(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/j;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->d(Landroidx/browser/customtabs/c;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/j;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient;->a:Lc/b;

    invoke-interface {v0, p1, p2}, Lc/b;->w0(J)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
