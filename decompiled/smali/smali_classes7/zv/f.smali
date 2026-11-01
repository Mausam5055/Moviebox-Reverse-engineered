.class public final Lzv/f;
.super Ljava/lang/Object;


# static fields
.field public static final f:Lkotlin/Lazy;


# instance fields
.field public a:Z

.field public final b:Lcom/transsion/upgradesdk/net/g;

.field public c:J

.field public final d:Ljava/lang/String;

.field public final e:Lzv/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/transsion/upgradesdk/net/f;->a:Lcom/transsion/upgradesdk/net/f;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lzv/f;->f:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/upgradesdk/net/g;

    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/net/g;-><init>(Lzv/f;)V

    iput-object v0, p0, Lzv/f;->b:Lcom/transsion/upgradesdk/net/g;

    const-string v0, "UpgradeSdkManager"

    iput-object v0, p0, Lzv/f;->d:Ljava/lang/String;

    new-instance v0, Lzv/e;

    invoke-direct {v0, p0}, Lzv/e;-><init>(Lzv/f;)V

    iput-object v0, p0, Lzv/f;->e:Lzv/e;

    return-void
.end method

.method public static final b(Lzv/f;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "connectivityManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lzv/f;->a:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzv/f;->a:Z

    sget-object v0, Lxv/a;->a:Landroid/app/Application;

    const/4 v1, 0x0

    const-string v2, "application"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    iget-object v1, p0, Lzv/f;->e:Lzv/e;

    invoke-static {v0, v1}, Lf2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lxv/a;->a:Landroid/app/Application;

    if-eqz v3, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lzv/f;->b:Lcom/transsion/upgradesdk/net/g;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    :goto_2
    return-void
.end method
