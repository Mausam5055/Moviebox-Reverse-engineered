.class public final Lcom/transsion/player/mediasession/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/player/mediasession/h;

.field private static b:Z

.field private static c:Landroid/support/v4/media/session/MediaSessionCompat;

.field private static d:Lcom/transsion/player/mediasession/MediaService;

.field private static e:Lcom/transsion/player/mediasession/MediaItem;

.field private static f:Ljava/lang/Integer;

.field private static g:Landroid/graphics/Bitmap;

.field private static h:Ljava/lang/String;

.field private static final i:Lcom/transsion/player/mediasession/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/player/mediasession/h;

    invoke-direct {v0}, Lcom/transsion/player/mediasession/h;-><init>()V

    sput-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    const-string v0, ""

    sput-object v0, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    new-instance v0, Lcom/transsion/player/mediasession/h$a;

    invoke-direct {v0}, Lcom/transsion/player/mediasession/h$a;-><init>()V

    sput-object v0, Lcom/transsion/player/mediasession/h;->i:Lcom/transsion/player/mediasession/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/player/mediasession/h;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Lcom/transsion/player/mediasession/MediaItem;
    .locals 1

    sget-object v0, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    return-object v0
.end method

.method public static final synthetic d()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    sget-object v0, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/transsion/player/mediasession/h;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic f()Lcom/transsion/player/mediasession/MediaService;
    .locals 1

    sget-object v0, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    return-object v0
.end method

.method public static final synthetic g(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p0, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final h(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/player/mediasession/h;->q(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private final i()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/mediasession/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    sget-object v1, Loo/h;->a:Loo/h;

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v10}, Loo/h;->c(Loo/h;Ljava/lang/String;IZZIZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final m(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 5

    sput-object p1, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    sput-object p2, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    sput-object p3, Lcom/transsion/player/mediasession/h;->f:Ljava/lang/Integer;

    sput-object p4, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->n()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p4

    const-string v0, "getApp(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/app/NotificationCompat$m;

    const-string v1, "MUSIC_NOTIFICATION_ID"

    invoke-direct {v0, p4, v1}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "VideoPlayer"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    const-string v1, "setContentText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/player/R$mipmap;->player_ic_push_small_logo:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->A(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$m;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->A(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$m;

    :goto_1
    sget-object v1, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver;->a:Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;

    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->u(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$m;->o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    :cond_6
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$m;->O(I)Landroidx/core/app/NotificationCompat$m;

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    new-instance p3, Landroidx/core/app/NotificationCompat$b$a;

    sget v2, Lcom/transsion/player/R$mipmap;->player_pause:I

    const-wide/16 v3, 0x2

    invoke-static {p4, v3, v4}, Landroidx/media/session/MediaButtonReceiver;->a(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object p4

    const-string v3, "pause"

    invoke-direct {p3, v2, v3, p4}, Landroidx/core/app/NotificationCompat$b$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$b$a;->a()Landroidx/core/app/NotificationCompat$b;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->b(Landroidx/core/app/NotificationCompat$b;)Landroidx/core/app/NotificationCompat$m;

    goto :goto_4

    :cond_8
    :goto_3
    new-instance p3, Landroidx/core/app/NotificationCompat$b$a;

    sget v2, Lcom/transsion/player/R$mipmap;->player_play:I

    const-wide/16 v3, 0x4

    invoke-static {p4, v3, v4}, Landroidx/media/session/MediaButtonReceiver;->a(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object p4

    const-string v3, "play"

    invoke-direct {p3, v2, v3, p4}, Landroidx/core/app/NotificationCompat$b$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$b$a;->a()Landroidx/core/app/NotificationCompat$b;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->b(Landroidx/core/app/NotificationCompat$b;)Landroidx/core/app/NotificationCompat$m;

    :goto_4
    new-instance p3, Landroidx/media/app/c;

    invoke-direct {p3}, Landroidx/media/app/c;-><init>()V

    sget-object p4, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p4

    goto :goto_5

    :cond_9
    move-object p4, v1

    :goto_5
    invoke-virtual {p3, p4}, Landroidx/media/app/c;->q(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/c;

    move-result-object p3

    const/4 p4, 0x0

    filled-new-array {p4}, [I

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/media/app/c;->r([I)Landroidx/media/app/c;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    sget p3, Lcom/transsion/player/R$mipmap;->player_ic_push_small_logo:I

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    :try_start_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 p4, 0xe0

    iput p4, p3, Landroid/app/Notification;->flags:I

    sget-boolean p4, Lcom/transsion/player/mediasession/h;->b:Z

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    const-string v2, "notification"

    const v3, 0x15e9d

    if-eqz p4, :cond_b

    if-eqz p1, :cond_a

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_a
    :goto_6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v3, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/c;->l()Z

    move-result p4

    if-eqz p4, :cond_d

    if-eqz p1, :cond_c

    :try_start_2
    invoke-virtual {p1, v3, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v3, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_8
    sput-boolean p2, Lcom/transsion/player/mediasession/h;->b:Z

    goto :goto_9

    :cond_d
    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    const-string p2, "Service is restricted, cannot start foreground."

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    :catchall_3
    :goto_9
    return-void
.end method

.method private final n()V
    .locals 5

    sget-object v0, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    sput-object v0, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "http"

    invoke-static {v0, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    sput-object v1, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v1, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MediaItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, ""

    :cond_4
    invoke-direct {p0, v1}, Lcom/transsion/player/mediasession/h;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/mediasession/h;->i:Lcom/transsion/player/mediasession/h$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    sget-object v1, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/transsion/player/mediasession/h;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/player/R$mipmap;->player_ic_push_small_logo:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    :goto_2
    sget-object v0, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    sget-object v1, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    sget-object v2, Lcom/transsion/player/mediasession/h;->f:Ljava/lang/Integer;

    sget-object v3, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/player/mediasession/h;->m(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    :goto_3
    return-void
.end method

.method private final q(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v6, 0x0

    if-gt v4, v0, :cond_1

    if-gt v5, v0, :cond_1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-gt v5, v0, :cond_2

    if-le v4, v0, :cond_3

    :cond_2
    int-to-float v3, v5

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->e(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    :cond_3
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public final j()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    return v0
.end method

.method public final l()V
    .locals 4

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> initNotificationChannel() --> \u521d\u59cb\u5316 \u901a\u77e5\u7684 \u6e20\u9053"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/player/R$string;->player_notification_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "MUSIC_NOTIFICATION_ID"

    invoke-static {v3, v1, v2}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/transsion/player/mediasession/g;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-string v2, "playing media"

    invoke-static {v1, v2}, Landroidx/media3/common/util/f0;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    sget-object v0, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver;->a:Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;->b()V

    return-void
.end method

.method public final o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    if-nez p2, :cond_0

    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->i()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> notifyNotification() --> mediaItem == null --> return"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/player/mediasession/h;->p()V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/player/mediasession/h;->m(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method

.method public final p()V
    .locals 2

    sget-object v0, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/app/z;->a(Landroid/app/Service;I)V

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x15e9d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/player/mediasession/h;->b:Z

    return-void
.end method

.method public final r(Z)V
    .locals 0

    sput-boolean p1, Lcom/transsion/player/mediasession/h;->b:Z

    return-void
.end method
