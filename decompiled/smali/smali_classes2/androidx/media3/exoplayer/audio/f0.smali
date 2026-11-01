.class public final Landroidx/media3/exoplayer/audio/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/f0$b;,
        Landroidx/media3/exoplayer/audio/f0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/f0;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/f0;->a:Landroid/content/Context;

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/f0;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lt1/m;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    const-string v0, "offloadVariableRateSupported"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "offloadVariableRateSupported=1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/f0;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/f0;->b:Ljava/lang/Boolean;

    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/f0;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Landroidx/media3/common/r;Landroidx/media3/common/c;)Landroidx/media3/exoplayer/audio/k;
    .locals 4

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    iget v1, p1, Landroidx/media3/common/r;->F:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/f0;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/f0;->b(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroidx/media3/common/util/a1;->K(I)I

    move-result v3

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p1, Landroidx/media3/common/r;->E:I

    invoke-static {v3}, Landroidx/media3/common/util/a1;->M(I)I

    move-result v3

    if-nez v3, :cond_2

    sget-object p1, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-object p1

    :cond_2
    :try_start_0
    iget p1, p1, Landroidx/media3/common/r;->F:I

    invoke-static {p1, v3, v2}, Landroidx/media3/common/util/a1;->L(III)Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_3

    invoke-virtual {p2}, Landroidx/media3/common/c;->a()Landroidx/media3/common/c$d;

    move-result-object p2

    iget-object p2, p2, Landroidx/media3/common/c$d;->a:Landroid/media/AudioAttributes;

    invoke-static {p1, p2, v1}, Landroidx/media3/exoplayer/audio/f0$b;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/k;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p2}, Landroidx/media3/common/c;->a()Landroidx/media3/common/c$d;

    move-result-object p2

    iget-object p2, p2, Landroidx/media3/common/c$d;->a:Landroid/media/AudioAttributes;

    invoke-static {p1, p2, v1}, Landroidx/media3/exoplayer/audio/f0$a;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/k;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-object p1

    :cond_5
    :goto_1
    sget-object p1, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-object p1
.end method
