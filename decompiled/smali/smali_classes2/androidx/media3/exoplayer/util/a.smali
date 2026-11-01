.class public Landroidx/media3/exoplayer/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Ly1/c;


# static fields
.field private static final e:Ljava/text/NumberFormat;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/media3/common/e0$c;

.field private final c:Landroidx/media3/common/e0$b;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/util/a;->e:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EventLogger"

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/util/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/a;->a:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/e0$c;

    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/a;->b:Landroidx/media3/common/e0$c;

    new-instance p1, Landroidx/media3/common/e0$b;

    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/a;->c:Landroidx/media3/common/e0$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/util/a;->d:J

    return-void
.end method

.method private static A0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "UNSUITABLE_AUDIO_OUTPUT"

    return-object p0

    :cond_1
    const-string p0, "TRANSIENT_AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_2
    const-string p0, "NONE"

    return-object p0
.end method

.method private static B0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ALL"

    return-object p0

    :cond_1
    const-string p0, "ONE"

    return-object p0

    :cond_2
    const-string p0, "OFF"

    return-object p0
.end method

.method private C(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/a;->H(Ly1/c$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of p2, p4, Landroidx/media3/common/PlaybackException;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errorCode="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, p4

    check-cast p1, Landroidx/media3/common/PlaybackException;

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p4}, Landroidx/media3/common/util/u;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n  "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p2, p4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static C0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ENDED"

    return-object p0

    :cond_1
    const-string p0, "READY"

    return-object p0

    :cond_2
    const-string p0, "BUFFERING"

    return-object p0

    :cond_3
    const-string p0, "IDLE"

    return-object p0
.end method

.method private static D0(J)Ljava/lang/String;
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/util/a;->e:Ljava/text/NumberFormat;

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static E0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "SOURCE_UPDATE"

    return-object p0

    :cond_1
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0
.end method

.method private static F0(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "[X]"

    goto :goto_0

    :cond_0
    const-string p0, "[ ]"

    :goto_0
    return-object p0
.end method

.method private H(Ly1/c$a;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Ly1/c$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", period="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Ly1/c$a;->b:Landroidx/media3/common/e0;

    iget-object v2, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adGroup="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget v0, v0, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ad="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget v0, v0, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Ly1/c$a;->a:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/util/a;->d:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/util/a;->D0(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mediaPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Ly1/c$a;->e:J

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/util/a;->D0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private H0(Ly1/c$a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/util/a;->C(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    return-void
.end method

.method private I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/util/a;->C(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    return-void
.end method

.method private K0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/util/a;->C(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->J0(Ljava/lang/String;)V

    return-void
.end method

.method private L0(Ly1/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/util/a;->C(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->J0(Ljava/lang/String;)V

    return-void
.end method

.method private M0(Ly1/c$a;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "internalError"

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/util/a;->K0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private N0(Landroidx/media3/common/x;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/x;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static e(Landroidx/media3/exoplayer/audio/AudioSink$a;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioSink$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioSink$a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioSink$a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioSink$a;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioSink$a;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioSink$a;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "?"

    return-object p0

    :pswitch_0
    const-string p0, "SILENCE_SKIP"

    return-object p0

    :pswitch_1
    const-string p0, "INTERNAL"

    return-object p0

    :pswitch_2
    const-string p0, "REMOVE"

    return-object p0

    :pswitch_3
    const-string p0, "SKIP"

    return-object p0

    :pswitch_4
    const-string p0, "SEEK_ADJUSTMENT"

    return-object p0

    :pswitch_5
    const-string p0, "SEEK"

    return-object p0

    :pswitch_6
    const-string p0, "AUTO_TRANSITION"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static y0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0

    :cond_1
    const-string p0, "SEEK"

    return-object p0

    :cond_2
    const-string p0, "AUTO"

    return-object p0

    :cond_3
    const-string p0, "REPEAT"

    return-object p0
.end method

.method private static z0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "END_OF_MEDIA_ITEM"

    return-object p0

    :cond_1
    const-string p0, "REMOTE"

    return-object p0

    :cond_2
    const-string p0, "AUDIO_BECOMING_NOISY"

    return-object p0

    :cond_3
    const-string p0, "AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_4
    const-string p0, "USER_REQUEST"

    return-object p0
.end method


# virtual methods
.method public synthetic A(Ly1/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/b;->w(Ly1/c;Ly1/c$a;)V

    return-void
.end method

.method public synthetic B(Ly1/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/b;->X(Ly1/c;Ly1/c$a;)V

    return-void
.end method

.method public synthetic D(Ly1/c$a;Landroidx/media3/common/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->Q(Ly1/c;Ly1/c$a;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public E(Ly1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    const-string p2, "videoDisabled"

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public F(Ly1/c$a;Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroidx/media3/exoplayer/util/a;->l(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", PositionInfo:old ["

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "mediaItem="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroidx/media3/common/a0$e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroidx/media3/common/a0$e;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Landroidx/media3/common/a0$e;->g:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/media3/common/a0$e;->i:I

    const-string v4, ", ad="

    const-string v5, ", adGroup="

    const-string v6, ", contentPos="

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p2, Landroidx/media3/common/a0$e;->h:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/media3/common/a0$e;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/media3/common/a0$e;->j:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "], PositionInfo:new ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroidx/media3/common/a0$e;->c:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroidx/media3/common/a0$e;->f:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Landroidx/media3/common/a0$e;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget p2, p3, Landroidx/media3/common/a0$e;->i:I

    if-eq p2, v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Landroidx/media3/common/a0$e;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroidx/media3/common/a0$e;->i:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroidx/media3/common/a0$e;->j:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "positionDiscontinuity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G(Ly1/c$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "renderedFirstFrame"

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected G0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/util/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic I(Ly1/c$a;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/b;->G(Ly1/c;Ly1/c$a;Lg2/i;Lg2/j;)V

    return-void
.end method

.method public synthetic J(Ly1/c$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ly1/b;->o(Ly1/c;Ly1/c$a;IJJ)V

    return-void
.end method

.method protected J0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/util/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public K(Ly1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    const-string p2, "audioEnabled"

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public L(Ly1/c$a;I)V
    .locals 1

    const-string v0, "audioSessionId"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic M(Ly1/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->I(Ly1/c;Ly1/c$a;Z)V

    return-void
.end method

.method public N(Ly1/c$a;IJJ)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string p4, "audioTrackUnderrun"

    invoke-direct {p0, p1, p4, p2, p3}, Landroidx/media3/exoplayer/util/a;->K0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public O(Ly1/c$a;ZI)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroidx/media3/exoplayer/util/a;->z0(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "playWhenReady"

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public P(Ly1/c$a;Landroidx/media3/common/z;)V
    .locals 1

    const-string v0, "playbackParameters"

    invoke-virtual {p2}, Landroidx/media3/common/z;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Q(Ly1/c$a;)V
    .locals 1

    const-string v0, "drmSessionReleased"

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public R(Ly1/c$a;Ljava/lang/String;JJ)V
    .locals 0

    const-string p3, "audioDecoderInitialized"

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public S(Ly1/c$a;Landroidx/media3/common/m0;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Landroidx/media3/common/m0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/media3/common/m0;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "videoSize"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic T(Ly1/c$a;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/b;->k0(Ly1/c;Ly1/c$a;JI)V

    return-void
.end method

.method public U(Ly1/c$a;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "drmSessionAcquired"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public V(Ly1/c$a;I)V
    .locals 1

    const-string v0, "playbackSuppressionReason"

    invoke-static {p2}, Landroidx/media3/exoplayer/util/a;->A0(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic W(Ly1/c$a;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/b;->b(Ly1/c;Ly1/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public X(Ly1/c$a;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "drmSessionManagerError"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->M0(Ly1/c$a;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public Y(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    const-string v0, "audioTrackInit"

    invoke-static {p2}, Landroidx/media3/exoplayer/util/a;->e(Landroidx/media3/exoplayer/audio/AudioSink$a;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Z(Ly1/c$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoDecoderReleased"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ly1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    const-string p2, "audioDisabled"

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public a0(Ly1/c$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "audioDecoderReleased"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ly1/c$a;F)V
    .locals 1

    const-string v0, "volume"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b0(Ly1/c$a;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/b;->S(Ly1/c;Ly1/c$a;ZI)V

    return-void
.end method

.method public c(Ly1/c$a;Landroidx/media3/common/PlaybackException;)V
    .locals 1

    const-string v0, "playerFailed"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->L0(Ly1/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic c0(Ly1/c$a;Landroidx/media3/common/a0$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->n(Ly1/c;Ly1/c$a;Landroidx/media3/common/a0$b;)V

    return-void
.end method

.method public synthetic d(Ly1/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->T(Ly1/c;Ly1/c$a;I)V

    return-void
.end method

.method public synthetic d0(Landroidx/media3/common/a0;Ly1/c$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->B(Ly1/c;Landroidx/media3/common/a0;Ly1/c$b;)V

    return-void
.end method

.method public e0(Ly1/c$a;Z)V
    .locals 1

    const-string v0, "shuffleModeEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ly1/c$a;IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rendererIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroidx/media3/common/util/a1;->t0(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "rendererReady"

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic f0(Ly1/c$a;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ly1/b;->m0(Ly1/c;Ly1/c$a;IIIF)V

    return-void
.end method

.method public g(Ly1/c$a;Z)V
    .locals 1

    const-string v0, "loading"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic g0(Ly1/c$a;Landroidx/media3/common/v;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->K(Ly1/c;Ly1/c$a;Landroidx/media3/common/v;)V

    return-void
.end method

.method public h(Ly1/c$a;IJ)V
    .locals 0

    const-string p3, "droppedFrames"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic h0(Ly1/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->f0(Ly1/c;Ly1/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic i(Ly1/c$a;Lu1/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->q(Ly1/c;Ly1/c$a;Lu1/b;)V

    return-void
.end method

.method public i0(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 0

    const-string p3, "audioInputFormat"

    invoke-static {p2}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ly1/c$a;Lg2/j;)V
    .locals 1

    iget-object p2, p2, Lg2/j;->c:Landroidx/media3/common/r;

    invoke-static {p2}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "downstreamFormat"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic j0(Ly1/c$a;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/b;->h(Ly1/c;Ly1/c$a;J)V

    return-void
.end method

.method public k(Ly1/c$a;)V
    .locals 1

    const-string v0, "drmKeysRestored"

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic k0(Ly1/c$a;Lg2/i;Lg2/j;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/b;->H(Ly1/c;Ly1/c$a;Lg2/i;Lg2/j;I)V

    return-void
.end method

.method public l0(Ly1/c$a;I)V
    .locals 1

    const-string v0, "state"

    invoke-static {p2}, Landroidx/media3/exoplayer/util/a;->C0(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ly1/c$a;Landroidx/media3/common/x;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "metadata ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/a;->H(Ly1/c$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    const-string p1, "  "

    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/util/a;->N0(Landroidx/media3/common/x;Ljava/lang/String;)V

    const-string p1, "]"

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public m0(Ly1/c$a;Z)V
    .locals 1

    const-string v0, "skipSilenceEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ly1/c$a;Z)V
    .locals 1

    const-string v0, "isPlaying"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic n0(Ly1/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->j(Ly1/c;Ly1/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic o(Ly1/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->a(Ly1/c;Ly1/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public o0(Ly1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    const-string p2, "videoEnabled"

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ly1/c$a;)V
    .locals 1

    const-string v0, "drmKeysLoaded"

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public p0(Ly1/c$a;II)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "surfaceSize"

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ly1/c$a;Ljava/lang/String;JJ)V
    .locals 0

    const-string p3, "videoDecoderInitialized"

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic q0(Ly1/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/b;->R(Ly1/c;Ly1/c$a;)V

    return-void
.end method

.method public synthetic r(Ly1/c$a;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/b;->E(Ly1/c;Ly1/c$a;Lg2/i;Lg2/j;)V

    return-void
.end method

.method public synthetic r0(Ly1/c$a;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->p(Ly1/c;Ly1/c$a;Ljava/util/List;)V

    return-void
.end method

.method public s(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    const-string v0, "audioTrackReleased"

    invoke-static {p2}, Landroidx/media3/exoplayer/util/a;->e(Landroidx/media3/exoplayer/audio/AudioSink$a;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic s0(Ly1/c$a;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/b;->s(Ly1/c;Ly1/c$a;IZ)V

    return-void
.end method

.method public t(Ly1/c$a;)V
    .locals 1

    const-string v0, "drmKeysRemoved"

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/a;->H0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public t0(Ly1/c$a;Landroidx/media3/common/t;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mediaItem ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/a;->H(Ly1/c$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroidx/media3/exoplayer/util/a;->y0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic u(Ly1/c$a;Landroidx/media3/common/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->r(Ly1/c;Ly1/c$a;Landroidx/media3/common/m;)V

    return-void
.end method

.method public synthetic u0(Ly1/c$a;Landroidx/media3/common/h0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/b;->c0(Ly1/c;Ly1/c$a;Landroidx/media3/common/h0;)V

    return-void
.end method

.method public v(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V
    .locals 0

    const-string p2, "loadError"

    invoke-direct {p0, p1, p2, p4}, Landroidx/media3/exoplayer/util/a;->M0(Ly1/c$a;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public v0(Ly1/c$a;Lg2/j;)V
    .locals 1

    iget-object p2, p2, Lg2/j;->c:Landroidx/media3/common/r;

    invoke-static {p2}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "upstreamDiscarded"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic w(Ly1/c$a;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/b;->g0(Ly1/c;Ly1/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public w0(Ly1/c$a;I)V
    .locals 8

    iget-object v0, p1, Ly1/c$a;->b:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->i()I

    move-result v0

    iget-object v1, p1, Ly1/c$a;->b:Landroidx/media3/common/e0;

    invoke-virtual {v1}, Landroidx/media3/common/e0;->p()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/a;->H(Ly1/c$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", periodCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", windowCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/media3/exoplayer/util/a;->E0(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v5, "]"

    if-ge v2, v4, :cond_0

    iget-object v3, p1, Ly1/c$a;->b:Landroidx/media3/common/e0;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/a;->c:Landroidx/media3/common/e0$b;

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  period ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/a;->c:Landroidx/media3/common/e0$b;

    invoke-virtual {v4}, Landroidx/media3/common/e0$b;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/media3/exoplayer/util/a;->D0(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "  ..."

    if-le v0, v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p1, Ly1/c$a;->b:Landroidx/media3/common/e0;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/a;->b:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, p2, v4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  window ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/a;->b:Landroidx/media3/common/e0$c;

    invoke-virtual {v4}, Landroidx/media3/common/e0$c;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/media3/exoplayer/util/a;->D0(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", seekable="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/a;->b:Landroidx/media3/common/e0$c;

    iget-boolean v4, v4, Landroidx/media3/common/e0$c;->h:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dynamic="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/a;->b:Landroidx/media3/common/e0$c;

    iget-boolean v4, v4, Landroidx/media3/common/e0$c;->i:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-le v1, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public x(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 0

    const-string p3, "videoInputFormat"

    invoke-static {p2}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic x0(Ly1/c$a;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/b;->F(Ly1/c;Ly1/c$a;Lg2/i;Lg2/j;)V

    return-void
.end method

.method public y(Ly1/c$a;Landroidx/media3/common/i0;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tracks ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/a;->H(Ly1/c$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const-string v2, "  ]"

    const-string v3, "    "

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/i0$a;

    const-string v4, "  group ["

    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    move v4, p2

    :goto_1
    iget v5, v1, Landroidx/media3/common/i0$a;->a:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, v4}, Landroidx/media3/common/i0$a;->h(I)Z

    move-result v5

    invoke-static {v5}, Landroidx/media3/exoplayer/util/a;->F0(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroidx/media3/common/i0$a;->c(I)I

    move-result v6

    invoke-static {v6}, Landroidx/media3/common/util/a1;->d0(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Track:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", supported="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    move v1, v0

    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/i0$a;

    move v5, p2

    :goto_3
    if-nez v0, :cond_3

    iget v6, v4, Landroidx/media3/common/i0$a;->a:I

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Landroidx/media3/common/i0$a;->h(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/media3/common/x;->e()I

    move-result v7

    if-lez v7, :cond_2

    const-string v0, "  Metadata ["

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    invoke-direct {p0, v6, v3}, Landroidx/media3/exoplayer/util/a;->N0(Landroidx/media3/common/x;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string p1, "]"

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/a;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public z(Ly1/c$a;I)V
    .locals 1

    const-string v0, "repeatMode"

    invoke-static {p2}, Landroidx/media3/exoplayer/util/a;->B0(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/a;->I0(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
