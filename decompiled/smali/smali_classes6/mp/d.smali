.class public final Lmp/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp/d$a;
    }
.end annotation


# static fields
.field public static final e:Lmp/d$a;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmp/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmp/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmp/d;->e:Lmp/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmp/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lmp/d;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lmp/d;->e(Lmp/d;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final e(Lmp/d;Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :catch_0
    :cond_0
    return v0
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmp/d;->d:Z

    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "MediaPlayerHelper"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmp/d;->d:Z

    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_1
    const/4 p3, 0x0

    :try_start_0
    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lmp/d;->c:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_4
    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_5
    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_6
    iput-object p3, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p3, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    :catch_0
    iput-object p3, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lmp/d;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p3

    iput-object p3, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    :cond_7
    :goto_0
    :try_start_1
    iget-object p3, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_5

    :cond_8
    :goto_1
    iput-object p2, p0, Lmp/d;->c:Ljava/lang/String;

    iget-object p3, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz p3, :cond_9

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_9
    iget-object p1, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_a
    iget-object p1, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_b

    new-instance p2, Lmp/c;

    invoke-direct {p2, p0}, Lmp/c;-><init>(Lmp/d;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_b
    if-eqz p4, :cond_c

    iget-object p1, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_c

    invoke-virtual {p1, p4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "MediaPlayerHelper"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_6

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "MediaPlayerHelper"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_6

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "MediaPlayerHelper"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "MediaPlayerHelper"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final f()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lmp/d;->a:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmp/d;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
