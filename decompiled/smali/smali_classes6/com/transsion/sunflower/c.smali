.class public final Lcom/transsion/sunflower/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sunflower/c$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/sunflower/c$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/sunflower/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/sunflower/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/sunflower/c;->d:Lcom/transsion/sunflower/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/sunflower/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/sunflower/c;->b:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    const/4 v0, 0x4

    invoke-static {p2, p3, v0}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sunflower/c;->c:Landroid/app/NotificationChannel;

    const/4 p3, 0x0

    invoke-static {p2, p3, p3}, Lcom/transsion/player/mediasession/g;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object p2, p0, Lcom/transsion/sunflower/c;->c:Landroid/app/NotificationChannel;

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/transsion/mpush/core/renderer/d;->a(Landroid/app/NotificationChannel;Z)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/sunflower/c;->c:Landroid/app/NotificationChannel;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    invoke-static {p2, p3}, Lcom/transsion/mpush/core/renderer/f;->a(Landroid/app/NotificationChannel;I)V

    :goto_0
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/transsion/sunflower/c;->c:Landroid/app/NotificationChannel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/core/app/NotificationCompat$m;Landroid/app/PendingIntent;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroidx/core/app/NotificationCompat$m;->x(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$m;

    :try_start_0
    const-string p3, "notification"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, p4}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
