.class final Lf2/c$d;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field final synthetic c:Lf2/c;


# direct methods
.method private constructor <init>(Lf2/c;)V
    .locals 0

    iput-object p1, p0, Lf2/c$d;->c:Lf2/c;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lf2/c;Lf2/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lf2/c$d;-><init>(Lf2/c;)V

    return-void
.end method

.method public static synthetic a(Lf2/c$d;)V
    .locals 0

    invoke-direct {p0}, Lf2/c$d;->d()V

    return-void
.end method

.method public static synthetic b(Lf2/c$d;)V
    .locals 0

    invoke-direct {p0}, Lf2/c$d;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lf2/c$d;->c:Lf2/c;

    invoke-static {v0}, Lf2/c;->c(Lf2/c;)Lf2/c$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf2/c$d;->c:Lf2/c;

    invoke-static {v0}, Lf2/c;->a(Lf2/c;)V

    :cond_0
    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Lf2/c$d;->c:Lf2/c;

    invoke-static {v0}, Lf2/c;->c(Lf2/c;)Lf2/c$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf2/c$d;->c:Lf2/c;

    invoke-static {v0}, Lf2/c;->d(Lf2/c;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lf2/c$d;->c:Lf2/c;

    invoke-static {v0}, Lf2/c;->b(Lf2/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lf2/d;

    invoke-direct {v1, p0}, Lf2/d;-><init>(Lf2/c$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lf2/c$d;->c:Lf2/c;

    invoke-static {v0}, Lf2/c;->b(Lf2/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lf2/e;

    invoke-direct {v1, p0}, Lf2/e;-><init>(Lf2/c$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Lf2/c$d;->e()V

    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lf2/c$d;->f()V

    :cond_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    iget-boolean p2, p0, Lf2/c$d;->a:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lf2/c$d;->b:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lf2/c$d;->f()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lf2/c$d;->a:Z

    iput-boolean p1, p0, Lf2/c$d;->b:Z

    invoke-direct {p0}, Lf2/c$d;->e()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Lf2/c$d;->e()V

    return-void
.end method
