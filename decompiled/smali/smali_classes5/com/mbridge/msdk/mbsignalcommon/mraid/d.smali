.class public Lcom/mbridge/msdk/mbsignalcommon/mraid/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;,
        Lcom/mbridge/msdk/mbsignalcommon/mraid/d$a;
    }
.end annotation


# static fields
.field public static f:D = -1.0


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/AudioManager;

.field private c:Z

.field private d:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;

.field private e:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->c:Z

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->b:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public a()D
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->b:Landroid/media/AudioManager;

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->b:Landroid/media/AudioManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    :cond_1
    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    sput-wide v1, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->f:D

    return-wide v1
.end method

.method public a(Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->d:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;

    return-void
.end method

.method public b()Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->d:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;

    return-object v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d$a;-><init>(Lcom/mbridge/msdk/mbsignalcommon/mraid/d;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->e:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->e:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->c:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->e:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->d:Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
