.class public Landroidx/browser/customtabs/k;
.super Ljava/lang/Object;


# instance fields
.field final a:Lc/a;

.field private final b:Landroid/app/PendingIntent;

.field private final c:Landroidx/browser/customtabs/c;


# direct methods
.method constructor <init>(Lc/a;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CustomTabsSessionToken must have either a session id or a callback (or both)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/browser/customtabs/k;->a:Lc/a;

    iput-object p2, p0, Landroidx/browser/customtabs/k;->b:Landroid/app/PendingIntent;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/browser/customtabs/k$a;

    invoke-direct {p1, p0}, Landroidx/browser/customtabs/k$a;-><init>(Landroidx/browser/customtabs/k;)V

    :goto_1
    iput-object p1, p0, Landroidx/browser/customtabs/k;->c:Landroidx/browser/customtabs/c;

    return-void
.end method

.method private b()Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/k;->a:Lc/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomTabSessionToken must have valid binder or pending session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/k;->a:Lc/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method c()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/k;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroidx/browser/customtabs/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/browser/customtabs/k;

    invoke-virtual {p1}, Landroidx/browser/customtabs/k;->c()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Landroidx/browser/customtabs/k;->b:Landroid/app/PendingIntent;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eq v4, v3, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-direct {p0}, Landroidx/browser/customtabs/k;->b()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p1}, Landroidx/browser/customtabs/k;->b()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/k;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Landroidx/browser/customtabs/k;->b()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
