.class final Landroidx/media3/exoplayer/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/h$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/q;

.field private final b:Landroid/os/Handler;

.field private c:Landroidx/media3/exoplayer/h$a;

.field private d:Landroidx/media3/common/c;

.field private e:I

.field private f:I

.field private g:F

.field private h:Lt1/g;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/exoplayer/h$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/h;->g:F

    new-instance v0, Landroidx/media3/exoplayer/g;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/g;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/q;)Lcom/google/common/base/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/h;->a:Lcom/google/common/base/q;

    iput-object p3, p0, Landroidx/media3/exoplayer/h;->c:Landroidx/media3/exoplayer/h$a;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/h;->b:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/h;->e:I

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/h;->h(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/h;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/h;->g(I)V

    return-void
.end method

.method private c()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/h;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/h;->h:Lt1/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/h;->a:Lcom/google/common/base/q;

    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/h;->h:Lt1/g;

    invoke-static {v0, v1}, Lt1/m;->b(Landroid/media/AudioManager;Lt1/g;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Landroidx/media3/common/c;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroidx/media3/common/c;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "AudioFocusManager"

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/c;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    iget p0, p0, Landroidx/media3/common/c;->a:I

    if-ne p0, v5, :cond_1

    return v3

    :cond_1
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v3

    :pswitch_6
    return v5

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v4, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/h;->c:Landroidx/media3/exoplayer/h$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/h$a;->u(I)V

    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/h;->m(I)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/h;->e(I)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/h;->e(I)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/h;->c()V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/h;->m(I)V

    return-void

    :cond_2
    if-eq p1, v1, :cond_4

    invoke-direct {p0}, Landroidx/media3/exoplayer/h;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/h;->m(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/h;->e(I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/h;->m(I)V

    :goto_1
    return-void
.end method

.method private static synthetic h(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 0

    invoke-static {p0}, Lt1/m;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method private j()I
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/h;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/h;->k()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/h;->m(I)V

    return v1

    :cond_1
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/h;->m(I)V

    const/4 v0, -0x1

    return v0
.end method

.method private k()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/h;->h:Lt1/g;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/h;->i:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lt1/g$b;

    iget v1, p0, Landroidx/media3/exoplayer/h;->f:I

    invoke-direct {v0, v1}, Lt1/g$b;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lt1/g;->a()Lt1/g$b;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/h;->p()Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/h;->d:Landroidx/media3/common/c;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/c;

    invoke-virtual {v0, v2}, Lt1/g$b;->b(Landroidx/media3/common/c;)Lt1/g$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lt1/g$b;->d(Z)Lt1/g$b;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/f;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/h;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/h;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lt1/g$b;->c(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Lt1/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lt1/g$b;->a()Lt1/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/h;->h:Lt1/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/h;->i:Z

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/h;->a:Lcom/google/common/base/q;

    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/h;->h:Lt1/g;

    invoke-static {v0, v1}, Lt1/m;->i(Landroid/media/AudioManager;Lt1/g;)I

    move-result v0

    return v0
.end method

.method private m(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/h;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/h;->e:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/h;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/media3/exoplayer/h;->g:F

    iget-object v0, p0, Landroidx/media3/exoplayer/h;->c:Landroidx/media3/exoplayer/h$a;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/h$a;->s(F)V

    :cond_3
    return-void
.end method

.method private n(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/h;->f:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/h;->d:Landroidx/media3/common/c;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/media3/common/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public f()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/h;->g:F

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/h;->c:Landroidx/media3/exoplayer/h$a;

    invoke-direct {p0}, Landroidx/media3/exoplayer/h;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/h;->m(I)V

    return-void
.end method

.method public l(Landroidx/media3/common/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/h;->d:Landroidx/media3/common/c;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/media3/exoplayer/h;->d:Landroidx/media3/common/c;

    invoke-static {p1}, Landroidx/media3/exoplayer/h;->d(Landroidx/media3/common/c;)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/h;->f:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v0, p1}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public o(ZI)I
    .locals 2

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/h;->n(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/h;->c()V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/h;->m(I)V

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/h;->j()I

    move-result p1

    return p1

    :cond_1
    iget p1, p0, Landroidx/media3/exoplayer/h;->e:I

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method
