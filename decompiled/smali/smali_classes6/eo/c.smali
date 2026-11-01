.class public final Leo/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Leo/c;

.field private static b:Z

.field private static c:I

.field private static d:I

.field private static e:I

.field private static volatile f:I

.field private static final g:Lkotlin/Lazy;

.field private static final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Leo/c;

    invoke-direct {v0}, Leo/c;-><init>()V

    sput-object v0, Leo/c;->a:Leo/c;

    const/4 v1, 0x1

    sput-boolean v1, Leo/c;->b:Z

    const/16 v2, 0xc8

    sput v2, Leo/c;->c:I

    const/16 v2, 0x64

    sput v2, Leo/c;->d:I

    const/16 v3, 0xf

    sput v3, Leo/c;->e:I

    sput v2, Leo/c;->f:I

    new-instance v2, Leo/a;

    invoke-direct {v2}, Leo/a;-><init>()V

    invoke-static {v2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    sput-object v2, Leo/c;->g:Lkotlin/Lazy;

    new-instance v2, Leo/b;

    invoke-direct {v2}, Leo/b;-><init>()V

    invoke-static {v2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    sput-object v2, Leo/c;->h:Lkotlin/Lazy;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Leo/c$a;

    invoke-direct {v5, v4}, Leo/c$a;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {v0}, Leo/c;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    sput v0, Leo/c;->e:I

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Leo/c;->a:Leo/c;

    invoke-virtual {v0}, Leo/c;->h()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/app/NotificationManager;
    .locals 1

    invoke-static {}, Leo/c;->j()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Landroid/media/AudioManager;
    .locals 1

    invoke-static {}, Leo/c;->i()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method private final f()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Leo/c;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private final g()Landroid/app/NotificationManager;
    .locals 1

    sget-object v0, Leo/c;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static final i()Landroid/media/AudioManager;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private static final j()Landroid/app/NotificationManager;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public final c(IF)V
    .locals 3

    int-to-float v0, p1

    add-float/2addr v0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr v0, p2

    sget p2, Leo/c;->e:I

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    if-lt v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preVolume:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", volume:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-direct {p0}, Leo/c;->f()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Leo/c;->b:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Leo/c;->f()Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Leo/c;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCurVolume volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Leo/c;->e:I

    if-ge v0, v1, :cond_0

    sget v1, Leo/c;->f:I

    sget v2, Leo/c;->e:I

    mul-int/2addr v1, v2

    sget v3, Leo/c;->d:I

    div-int/2addr v1, v3

    if-eq v1, v0, :cond_0

    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    sput v0, Leo/c;->f:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final e()I
    .locals 1

    sget v0, Leo/c;->f:I

    return v0
.end method

.method public final h()V
    .locals 6

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Leo/c;->g()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    sput-boolean v0, Leo/c;->b:Z

    invoke-direct {p0}, Leo/c;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sget v1, Leo/c;->d:I

    mul-int/2addr v1, v0

    sget v2, Leo/c;->e:I

    div-int/2addr v1, v2

    sput v1, Leo/c;->f:I

    const-string v1, "AppVolumeManager"

    sget v2, Leo/c;->f:I

    sget v3, Leo/c;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curVolume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volume:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " system:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final k(I)I
    .locals 2

    sget v0, Leo/c;->f:I

    add-int/2addr v0, p1

    sget v1, Leo/c;->c:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    sget v1, Leo/c;->d:I

    if-gt v0, v1, :cond_0

    sget v1, Leo/c;->f:I

    int-to-float p1, p1

    invoke-virtual {p0, v1, p1}, Leo/c;->c(IF)V

    :cond_0
    sput v0, Leo/c;->f:I

    return v0
.end method
