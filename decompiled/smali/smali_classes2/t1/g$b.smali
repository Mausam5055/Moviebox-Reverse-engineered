.class public final Lt1/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private c:Landroid/os/Handler;

.field private d:Landroidx/media3/common/c;

.field private e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/c;->g:Landroidx/media3/common/c;

    iput-object v0, p0, Lt1/g$b;->d:Landroidx/media3/common/c;

    iput p1, p0, Lt1/g$b;->a:I

    return-void
.end method

.method private constructor <init>(Lt1/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lt1/g;->e()I

    move-result v0

    iput v0, p0, Lt1/g$b;->a:I

    invoke-virtual {p1}, Lt1/g;->f()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Lt1/g$b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1}, Lt1/g;->d()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lt1/g$b;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Lt1/g;->b()Landroidx/media3/common/c;

    move-result-object v0

    iput-object v0, p0, Lt1/g$b;->d:Landroidx/media3/common/c;

    invoke-virtual {p1}, Lt1/g;->g()Z

    move-result p1

    iput-boolean p1, p0, Lt1/g$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lt1/g;Lt1/g$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lt1/g$b;-><init>(Lt1/g;)V

    return-void
.end method


# virtual methods
.method public a()Lt1/g;
    .locals 7

    iget-object v2, p0, Lt1/g$b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v2, :cond_0

    new-instance v6, Lt1/g;

    iget v1, p0, Lt1/g$b;->a:I

    iget-object v0, p0, Lt1/g$b;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Handler;

    iget-object v4, p0, Lt1/g$b;->d:Landroidx/media3/common/c;

    iget-boolean v5, p0, Lt1/g$b;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lt1/g;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroidx/media3/common/c;Z)V

    return-object v6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t build an AudioFocusRequestCompat instance without a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroidx/media3/common/c;)Lt1/g$b;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lt1/g$b;->d:Landroidx/media3/common/c;

    return-object p0
.end method

.method public c(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Lt1/g$b;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lt1/g$b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Lt1/g$b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public d(Z)Lt1/g$b;
    .locals 0

    iput-boolean p1, p0, Lt1/g$b;->e:Z

    return-object p0
.end method
