.class final Landroidx/media3/common/util/z$e;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/common/util/z;


# direct methods
.method private constructor <init>(Landroidx/media3/common/util/z;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/z$e;->a:Landroidx/media3/common/util/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/util/z;Landroidx/media3/common/util/z$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/z$e;-><init>(Landroidx/media3/common/util/z;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/z$e;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/z$e;->b(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/z$e;->a:Landroidx/media3/common/util/z;

    invoke-static {v0, p1}, Landroidx/media3/common/util/z;->c(Landroidx/media3/common/util/z;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p2, p0, Landroidx/media3/common/util/z$e;->a:Landroidx/media3/common/util/z;

    invoke-static {p2}, Landroidx/media3/common/util/z;->b(Landroidx/media3/common/util/z;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroidx/media3/common/util/e0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/common/util/e0;-><init>(Landroidx/media3/common/util/z$e;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
