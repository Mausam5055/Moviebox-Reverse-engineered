.class public final Lt1/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/g$c;,
        Lt1/g$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final c:Landroid/os/Handler;

.field private final d:Landroidx/media3/common/c;

.field private final e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroidx/media3/common/c;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt1/g;->a:I

    iput-object p3, p0, Lt1/g;->c:Landroid/os/Handler;

    iput-object p4, p0, Lt1/g;->d:Landroidx/media3/common/c;

    iput-boolean p5, p0, Lt1/g;->e:Z

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    new-instance v2, Lt1/g$c;

    invoke-direct {v2, p2, p3}, Lt1/g$c;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V

    iput-object v2, p0, Lt1/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lt1/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lt1/a;->a(I)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p4}, Landroidx/media3/common/c;->a()Landroidx/media3/common/c$d;

    move-result-object p4

    iget-object p4, p4, Landroidx/media3/common/c$d;->a:Landroid/media/AudioAttributes;

    invoke-static {p1, p4}, Lt1/b;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-static {p1, p5}, Lt1/c;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lt1/d;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lt1/e;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lt1/g;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lt1/g;->f:Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lt1/g$b;
    .locals 2

    new-instance v0, Lt1/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt1/g$b;-><init>(Lt1/g;Lt1/g$a;)V

    return-object v0
.end method

.method public b()Landroidx/media3/common/c;
    .locals 1

    iget-object v0, p0, Lt1/g;->d:Landroidx/media3/common/c;

    return-object v0
.end method

.method c()Landroid/media/AudioFocusRequest;
    .locals 1

    iget-object v0, p0, Lt1/g;->f:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lt1/f;->a(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lt1/g;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lt1/g;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt1/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lt1/g;

    iget v1, p0, Lt1/g;->a:I

    iget v3, p1, Lt1/g;->a:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lt1/g;->e:Z

    iget-boolean v3, p1, Lt1/g;->e:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lt1/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v3, p1, Lt1/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt1/g;->c:Landroid/os/Handler;

    iget-object v3, p1, Lt1/g;->c:Landroid/os/Handler;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt1/g;->d:Landroidx/media3/common/c;

    iget-object p1, p1, Lt1/g;->d:Landroidx/media3/common/c;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lt1/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lt1/g;->e:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lt1/g;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lt1/g;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v2, p0, Lt1/g;->c:Landroid/os/Handler;

    iget-object v3, p0, Lt1/g;->d:Landroidx/media3/common/c;

    iget-boolean v4, p0, Lt1/g;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
