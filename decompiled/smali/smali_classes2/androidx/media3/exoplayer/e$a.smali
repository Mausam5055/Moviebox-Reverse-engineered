.class final Landroidx/media3/exoplayer/e$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/e$b;

.field private final b:Landroidx/media3/common/util/p;

.field final synthetic c:Landroidx/media3/exoplayer/e;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/e;Landroidx/media3/common/util/p;Landroidx/media3/exoplayer/e$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/e$a;->c:Landroidx/media3/exoplayer/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/e$a;->b:Landroidx/media3/common/util/p;

    iput-object p3, p0, Landroidx/media3/exoplayer/e$a;->a:Landroidx/media3/exoplayer/e$b;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/e$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/e$a;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/e$a;->c:Landroidx/media3/exoplayer/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/e;->c(Landroidx/media3/exoplayer/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/e$a;->a:Landroidx/media3/exoplayer/e$b;

    invoke-interface {v0}, Landroidx/media3/exoplayer/e$b;->m()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/e$a;->b:Landroidx/media3/common/util/p;

    new-instance p2, Landroidx/media3/exoplayer/d;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/d;-><init>(Landroidx/media3/exoplayer/e$a;)V

    invoke-interface {p1, p2}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
