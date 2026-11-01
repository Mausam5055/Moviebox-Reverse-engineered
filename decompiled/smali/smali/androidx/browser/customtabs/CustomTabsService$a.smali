.class Landroidx/browser/customtabs/CustomTabsService$a;
.super Lc/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-direct {p0}, Lc/b$a;-><init>()V

    return-void
.end method

.method public static synthetic Z0(Landroidx/browser/customtabs/CustomTabsService$a;Landroidx/browser/customtabs/k;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/browser/customtabs/CustomTabsService$a;->c1(Landroidx/browser/customtabs/k;)V

    return-void
.end method

.method private a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v1
.end method

.method private b1(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "target_origin"

    if-lt v0, v1, :cond_1

    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v2, v0}, Landroidx/browser/customtabs/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    return-object p1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    return-object p1
.end method

.method private synthetic c1(Landroidx/browser/customtabs/k;)V
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsService;->a(Landroidx/browser/customtabs/k;)Z

    return-void
.end method

.method private d1(Lc/a;Landroid/app/PendingIntent;)Z
    .locals 4

    new-instance v0, Landroidx/browser/customtabs/k;

    invoke-direct {v0, p1, p2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/e;

    invoke-direct {v1, p0, v0}, Landroidx/browser/customtabs/e;-><init>(Landroidx/browser/customtabs/CustomTabsService$a;Landroidx/browser/customtabs/k;)V

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/collection/x0;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/collection/x0;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsService;->e(Landroidx/browser/customtabs/k;)Z

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p2
.end method


# virtual methods
.method public B(Lc/a;Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->c(Landroidx/browser/customtabs/k;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public Q0(Lc/a;Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 3

    invoke-static {p2}, Landroidx/browser/customtabs/m;->a(Landroid/os/IBinder;)Landroidx/browser/customtabs/m;

    move-result-object p2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3}, Landroidx/browser/customtabs/CustomTabsService;->j(Landroidx/browser/customtabs/k;Landroidx/browser/customtabs/l;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public T(Lc/a;Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p4}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->g(Landroidx/browser/customtabs/k;Landroid/net/Uri;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public U(Lc/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->d(Landroidx/browser/customtabs/k;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public V0(Lc/a;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$a;->b1(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1, p3}, Landroidx/browser/customtabs/CustomTabsService;->i(Landroidx/browser/customtabs/k;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public W(Lc/a;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3}, Landroidx/browser/customtabs/CustomTabsService;->f(Landroidx/browser/customtabs/k;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public d(Lc/a;Landroid/os/Bundle;)Z
    .locals 0

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService$a;->d1(Lc/a;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public g(Lc/a;Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->k(Landroidx/browser/customtabs/k;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public l0(Lc/a;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    invoke-direct {p0, p4}, Landroidx/browser/customtabs/CustomTabsService$a;->a1(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->l(Landroidx/browser/customtabs/k;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public q(Lc/a;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->d1(Lc/a;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public t(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public w0(J)Z
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->m(J)Z

    move-result p1

    return p1
.end method

.method public x0(Lc/a;Landroid/net/Uri;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, p2, v2, p1}, Landroidx/browser/customtabs/CustomTabsService;->i(Landroidx/browser/customtabs/k;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
