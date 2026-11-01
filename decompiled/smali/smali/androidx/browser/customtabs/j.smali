.class public final Landroidx/browser/customtabs/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lc/b;

.field private final c:Lc/a;

.field private final d:Landroid/content/ComponentName;

.field private final e:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lc/b;Lc/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/j;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    iput-object p2, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    iput-object p3, p0, Landroidx/browser/customtabs/j;->d:Landroid/content/ComponentName;

    iput-object p4, p0, Landroidx/browser/customtabs/j;->e:Landroid/app/PendingIntent;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/j;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string v1, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/j;->a(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private c(Landroidx/browser/customtabs/l;)Lc/c$a;
    .locals 1

    new-instance v0, Landroidx/browser/customtabs/j$a;

    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/j$a;-><init>(Landroidx/browser/customtabs/j;Landroidx/browser/customtabs/l;)V

    return-object v0
.end method


# virtual methods
.method d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method e()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/j;->d:Landroid/content/ComponentName;

    return-object v0
.end method

.method f()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/j;->e:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public g(Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    iget-object v1, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    invoke-interface {v0, v1, p1}, Lc/b;->B(Lc/a;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method isn\'t supported by the Custom Tabs implementation."

    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/j;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    iget-object v1, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    invoke-interface {v0, v1, p1, p2, p3}, Lc/b;->U(Lc/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/j;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Landroidx/browser/customtabs/j;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    iget-object v2, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    invoke-interface {v1, v2, p1, p2}, Lc/b;->W(Lc/a;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    monitor-exit v0

    const/4 p1, -0x2

    return p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j(Landroidx/browser/customtabs/l;Landroid/os/Bundle;)Z
    .locals 2

    invoke-direct {p0, p1}, Landroidx/browser/customtabs/j;->c(Landroidx/browser/customtabs/l;)Lc/c$a;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    iget-object v1, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lc/b;->Q0(Lc/a;Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method isn\'t supported by the Custom Tabs implementation."

    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
