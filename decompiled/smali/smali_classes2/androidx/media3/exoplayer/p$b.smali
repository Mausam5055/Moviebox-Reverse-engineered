.class final Landroidx/media3/exoplayer/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/m4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Landroid/media/AudioDeviceCallback;

.field private c:Landroidx/media3/common/util/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/p$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/p$b;->j(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/p$b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/p$b;->k(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/p$b;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;->i()V

    return-void
.end method

.method static synthetic f(Landroidx/media3/exoplayer/p$b;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/p$b;)Landroidx/media3/common/util/g;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    return-object p0
.end method

.method private h()Z
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->a:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    sget v5, Landroidx/media3/common/util/a1;->a:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_1

    return v7

    :cond_1
    const/16 v8, 0x1c

    if-lt v5, v8, :cond_2

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/16 v9, 0x17

    if-ne v8, v9, :cond_2

    return v7

    :cond_2
    const/16 v8, 0x1f

    if-lt v5, v8, :cond_4

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-eq v8, v6, :cond_3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v8, 0x1b

    if-ne v6, v8, :cond_4

    :cond_3
    return v7

    :cond_4
    const/16 v6, 0x21

    if-lt v5, v6, :cond_5

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_5

    return v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v7

    :cond_7
    return v2
.end method

.method private synthetic i()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/p$b;->b:Landroid/media/AudioDeviceCallback;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_0
    return-void
.end method

.method private static synthetic j(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/m4$a;->a(Z)V

    return-void
.end method

.method private synthetic k(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->L0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/p$b;->a:Landroid/media/AudioManager;

    new-instance v0, Landroidx/media3/exoplayer/p$b$a;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/p$b$a;-><init>(Landroidx/media3/exoplayer/p$b;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/p$b;->b:Landroid/media/AudioDeviceCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
    .locals 7

    new-instance v6, Landroidx/media3/common/util/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v5, Landroidx/media3/exoplayer/r;

    invoke-direct {v5, p1}, Landroidx/media3/exoplayer/r;-><init>(Landroidx/media3/exoplayer/m4$a;)V

    move-object v0, v6

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/g;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V

    iput-object v6, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    new-instance p1, Landroidx/media3/exoplayer/s;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/s;-><init>(Landroidx/media3/exoplayer/p$b;Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disable()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/g;

    new-instance v1, Landroidx/media3/exoplayer/q;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/q;-><init>(Landroidx/media3/exoplayer/p$b;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    return-void
.end method
