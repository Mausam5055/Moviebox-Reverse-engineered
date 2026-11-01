.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$m;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$c;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$b;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static l0:Z

.field private static final m0:Ljava/lang/Object;

.field private static n0:Ljava/util/concurrent/ScheduledExecutorService;

.field private static o0:I


# instance fields
.field private A:Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;

.field private B:Landroidx/media3/common/c;

.field private C:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

.field private D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

.field private E:Landroidx/media3/common/z;

.field private F:Z

.field private G:Ljava/nio/ByteBuffer;

.field private H:I

.field private I:J

.field private J:J

.field private K:J

.field private L:J

.field private M:I

.field private N:Z

.field private O:Z

.field private P:J

.field private Q:F

.field private R:Ljava/nio/ByteBuffer;

.field private S:I

.field private T:Ljava/nio/ByteBuffer;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:I

.field private final a:Landroid/content/Context;

.field private a0:Landroidx/media3/common/f;

.field private final b:Lt1/n;

.field private b0:Landroidx/media3/exoplayer/audio/j;

.field private final c:Z

.field private c0:Z

.field private final d:Landroidx/media3/exoplayer/audio/c0;

.field private d0:J

.field private final e:Landroidx/media3/exoplayer/audio/f1;

.field private e0:J

.field private final f:Lcom/google/common/collect/ImmutableList;

.field private f0:Z

.field private final g:Lcom/google/common/collect/ImmutableList;

.field private g0:Z

.field private final h:Landroidx/media3/exoplayer/audio/b0;

.field private h0:Landroid/os/Looper;

.field private final i:Ljava/util/ArrayDeque;

.field private i0:J

.field private final j:Z

.field private j0:J

.field private k:I

.field private k0:Landroid/os/Handler;

.field private l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;

.field private final m:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

.field private final n:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

.field private final o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

.field private final p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

.field private final q:Landroidx/media3/exoplayer/ExoPlayer$a;

.field private final r:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

.field private s:Ly1/f4;

.field private t:Landroidx/media3/exoplayer/audio/AudioSink$b;

.field private u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

.field private v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

.field private w:Landroidx/media3/common/audio/a;

.field private x:Landroid/media/AudioTrack;

.field private y:Landroidx/media3/exoplayer/audio/e;

.field private z:Landroidx/media3/exoplayer/audio/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    sget-object v1, Landroidx/media3/common/c;->g:Landroidx/media3/common/c;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->d(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/e;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->e(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Lt1/n;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Lt1/n;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->f(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c:Z

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->g(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Z

    iput v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:I

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->h(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->i(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

    new-instance v0, Landroidx/media3/exoplayer/audio/b0;

    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$m;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$m;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/audio/b0;-><init>(Landroidx/media3/exoplayer/audio/b0$a;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    new-instance v0, Landroidx/media3/exoplayer/audio/c0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/c0;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/c0;

    new-instance v1, Landroidx/media3/exoplayer/audio/f1;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/f1;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/exoplayer/audio/f1;

    new-instance v2, Landroidx/media3/common/audio/e;

    invoke-direct {v2}, Landroidx/media3/common/audio/e;-><init>()V

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f:Lcom/google/common/collect/ImmutableList;

    new-instance v2, Landroidx/media3/exoplayer/audio/e1;

    invoke-direct {v2}, Landroidx/media3/exoplayer/audio/e1;-><init>()V

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    iput v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    new-instance v0, Landroidx/media3/common/f;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Landroidx/media3/common/f;-><init>(IF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:Landroidx/media3/common/f;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    sget-object v1, Landroidx/media3/common/z;->d:Landroidx/media3/common/z;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Landroidx/media3/common/z;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/ExoPlayer$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/exoplayer/ExoPlayer$a;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->c(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;Landroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic B(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e0:J

    return-wide v0
.end method

.method static synthetic C()Z
    .locals 1

    invoke-static {}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q()Z

    move-result v0

    return v0
.end method

.method private D(J)V
    .locals 9

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Lt1/n;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    invoke-interface {v0, v1}, Lt1/n;->b(Landroidx/media3/common/z;)Landroidx/media3/common/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/z;->d:Landroidx/media3/common/z;

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_1
    sget-object v0, Landroidx/media3/common/z;->d:Landroidx/media3/common/z;

    goto :goto_1

    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Lt1/n;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    invoke-interface {v0, v1}, Lt1/n;->a(Z)Z

    move-result v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    new-instance v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Landroidx/media3/common/z;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l0()V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink$b;->onSkipSilenceEnabledChanged(Z)V

    :cond_3
    return-void
.end method

.method private E(J)J
    .locals 5

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->c:J

    sub-long/2addr p1, v1

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->a:Landroidx/media3/common/z;

    iget v0, v0, Landroidx/media3/common/z;->a:F

    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/a1;->g0(JF)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Lt1/n;

    invoke-interface {v2, p1, p2}, Lt1/n;->getMediaDuration(J)J

    move-result-wide p1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iget-wide v3, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->b:J

    add-long/2addr v3, p1

    sub-long/2addr p1, v0

    iput-wide p1, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->d:J

    return-wide v3

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iget-wide v2, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->b:J

    add-long/2addr v2, v0

    iget-wide p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->d:J

    add-long/2addr v2, p1

    return-wide v2
.end method

.method private F(J)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Lt1/n;

    invoke-interface {v0}, Lt1/n;->getSkippedOutputFrameCount()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    move-result-wide v2

    add-long/2addr p1, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i0:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    sub-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    move-result-wide v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i0:J

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P(J)V

    :cond_0
    return-wide p1
.end method

.method private G(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;ILandroidx/media3/common/r;)Landroid/media/AudioTrack;
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;->a(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p3, 0x1

    if-ne v1, p3, :cond_0

    return-object p2

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->b:I

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->c:I

    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->a:I

    iget-boolean v6, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->e:Z

    const/4 v7, 0x0

    move-object v0, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILandroidx/media3/common/r;ZLjava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p2

    :goto_0
    move-object v7, p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_0

    :goto_1
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->b:I

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->c:I

    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->a:I

    iget-boolean v6, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->e:Z

    const/4 v1, 0x0

    move-object v0, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILandroidx/media3/common/r;ZLjava/lang/Exception;)V

    throw p2
.end method

.method private H(Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)Landroid/media/AudioTrack;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a()Landroidx/media3/exoplayer/audio/AudioSink$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;ILandroidx/media3/common/r;)Landroid/media/AudioTrack;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/exoplayer/ExoPlayer$a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$a;->w(Z)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$b;->a(Ljava/lang/Exception;)V

    :cond_1
    throw p1
.end method

.method private I()Landroid/media/AudioTrack;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H(Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    const v3, 0xf4240

    if-le v2, v3, :cond_0

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c(I)Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    move-result-object v1

    :try_start_1
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H(Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)Landroid/media/AudioTrack;

    move-result-object v2

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X()V

    throw v0
.end method

.method private J(J)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_0

    :cond_2
    move v1, v7

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:J

    :goto_1
    move-wide v5, p1

    goto :goto_2

    :cond_3
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:J

    goto :goto_1

    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    move-object v1, p0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e0:J

    const-wide/16 v1, 0x0

    if-gez p1, :cond_a

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S(I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_5

    :goto_4
    move v7, v8

    goto :goto_5

    :cond_5
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X()V

    goto :goto_4

    :cond_6
    :goto_5
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    invoke-direct {p2, p1, v0, v7}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILandroidx/media3/common/r;Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink$b;->a(Ljava/lang/Exception;)V

    :cond_7
    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    sget-object p1, Landroidx/media3/exoplayer/audio/e;->c:Landroidx/media3/exoplayer/audio/e;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    throw p2

    :cond_9
    :goto_6
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->c(Ljava/lang/Exception;)V

    return-void

    :cond_a
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_b

    iput-boolean v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    :cond_b
    iget-boolean p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz p2, :cond_c

    if-ge p1, v0, :cond_c

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    if-nez v1, :cond_c

    invoke-interface {p2}, Landroidx/media3/exoplayer/audio/AudioSink$b;->c()V

    :cond_c
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget p2, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-nez p2, :cond_d

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:J

    :cond_d
    if-ne p1, v0, :cond_10

    if-eqz p2, :cond_f

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_e

    move v7, v8

    :cond_e
    invoke-static {v7}, Landroidx/media3/common/util/a;->g(Z)V

    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:J

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:I

    int-to-long v0, v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:J

    :cond_f
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method private K()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v0, :cond_1

    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->h()V

    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static L(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    const/4 p1, -0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    return p0
.end method

.method private static M(ILjava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_2

    const/4 v0, -0x1

    const/16 v1, 0x400

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Ll2/c;->e(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    const/16 p0, 0x200

    return p0

    :pswitch_3
    invoke-static {p1}, Ll2/b;->b(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Ll2/b;->i(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    :goto_0
    return p0

    :pswitch_4
    const/16 p0, 0x800

    return p0

    :pswitch_5
    return v1

    :pswitch_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/media3/common/util/a1;->P(Ljava/nio/ByteBuffer;I)I

    move-result p0

    invoke-static {p0}, Ll2/i0;->m(I)I

    move-result p0

    if-eq p0, v0, :cond_1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_7
    invoke-static {p1}, Ll2/b;->e(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_2
    :pswitch_8
    invoke-static {p1}, Ll2/p;->f(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p1}, Ll2/k0;->h(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private N()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:J

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:J

    :goto_0
    return-wide v1
.end method

.method private O()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:J

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/common/util/a1;->l(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:J

    :goto_0
    return-wide v0
.end method

.method private P(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    new-instance p2, Landroidx/media3/exoplayer/audio/m0;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/audio/m0;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static Q()Z
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private R()Z
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e0(Landroid/media/AudioTrack;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    iget v3, v0, Landroidx/media3/common/r;->H:I

    iget v0, v0, Landroidx/media3/common/r;->I:I

    invoke-static {v2, v3, v0}, Landroidx/media3/exoplayer/audio/j0;->a(Landroid/media/AudioTrack;II)V

    :cond_1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Ly1/f4;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$c;->a(Landroid/media/AudioTrack;Ly1/f4;)V

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v5, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-ne v5, v6, :cond_3

    move v5, v9

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    iget v6, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    iget v7, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    iget v8, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/audio/b0;->s(Landroid/media/AudioTrack;ZIII)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k0()V

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:Landroidx/media3/common/f;

    iget v1, v1, Landroidx/media3/common/f;->a:I

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:Landroidx/media3/common/f;

    iget v2, v2, Landroidx/media3/common/f;->b:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_4
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroidx/media3/exoplayer/audio/j;

    if-eqz v1, :cond_5

    const/16 v2, 0x17

    if-lt v0, v2, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v2, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$b;->b(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/j;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:Landroidx/media3/exoplayer/audio/i;

    if-eqz v1, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroidx/media3/exoplayer/audio/j;

    iget-object v2, v2, Landroidx/media3/exoplayer/audio/j;->a:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/i;->i(Landroid/media/AudioDeviceInfo;)V

    :cond_5
    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:Landroidx/media3/exoplayer/audio/i;

    if-eqz v0, :cond_6

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/i;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;

    :cond_6
    iput-boolean v9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a()Landroidx/media3/exoplayer/audio/AudioSink$a;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink$b;->j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    :cond_7
    return v9
.end method

.method private static S(I)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, -0x20

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private T()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static U(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/h0;->a(Landroid/media/AudioTrack;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic V(Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$b;->k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method private static synthetic W(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/media3/exoplayer/audio/n0;

    invoke-direct {p0, p1, p3}, Landroidx/media3/exoplayer/audio/n0;-><init>(Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    if-nez p1, :cond_1

    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/audio/n0;

    invoke-direct {v1, p1, p3}, Landroidx/media3/exoplayer/audio/n0;-><init>(Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    sget p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    if-nez p2, :cond_3

    sget-object p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method private X()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    return-void
.end method

.method private Y(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->F(JI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    return-object p1

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v4, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    iget v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    long-to-int v1, v1

    invoke-static {p1, v4, v3, v1, v0}, Landroidx/media3/exoplayer/audio/c1;->a(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private Z()V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink$b;->e()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:Landroidx/media3/exoplayer/audio/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h0:Landroid/os/Looper;

    new-instance v0, Landroidx/media3/exoplayer/audio/i;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    new-instance v2, Landroidx/media3/exoplayer/audio/l0;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/audio/l0;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroidx/media3/exoplayer/audio/j;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/audio/i;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/audio/i$f;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:Landroidx/media3/exoplayer/audio/i;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/i;->g()Landroidx/media3/exoplayer/audio/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c0()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/audio/b0;->g(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    :cond_1
    return-void
.end method

.method private d0(J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j0(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J(J)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->e()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j0(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/a;->i(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private e0(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;->a(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private static f0(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    invoke-static {v2}, Landroidx/media3/common/util/a1;->T0(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sput-object v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    sget-object v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Landroidx/media3/exoplayer/audio/k0;

    invoke-direct {v3, p0, p1, v0, p2}, Landroidx/media3/exoplayer/audio/k0;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x14

    invoke-interface {v2, v3, p1, p2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private g0()V
    .locals 11

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:I

    new-instance v10, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Landroidx/media3/common/z;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V

    iput-object v10, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:I

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/exoplayer/audio/f1;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/f1;->i()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l0()V

    return-void
.end method

.method private h0(Landroidx/media3/common/z;)V
    .locals 8

    new-instance v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Landroidx/media3/common/z;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    goto :goto_0

    :cond_0
    iput-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    :goto_0
    return-void
.end method

.method private i0()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    iget v1, v1, Landroidx/media3/common/z;->a:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    iget v1, v1, Landroidx/media3/common/z;->b:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAudioSink"

    const-string v2, "Failed to set playback params"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Landroidx/media3/common/z;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/z;-><init>(FF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    iget v0, v0, Landroidx/media3/common/z;->a:F

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/audio/b0;->t(F)V

    :cond_0
    return-void
.end method

.method private j0(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private k0()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    return-void
.end method

.method private l0()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->i:Landroidx/media3/common/audio/a;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->b()V

    return-void
.end method

.method private m0()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->G:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n0(I)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/common/util/a1;->F0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o0()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->j:Z

    if-eqz v0, :cond_0

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static p0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private q0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 10

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 v7, 0x1

    mul-long v8, p4, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long/2addr p4, v2

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    :cond_2
    iget-object p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    if-lez p4, :cond_4

    iget-object p5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_3

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    return p5

    :cond_3
    if-ge p5, p4, :cond_4

    return v1

    :cond_4
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_5

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    return p1

    :cond_5
    iget p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:I

    return p1
.end method

.method public static synthetic s(Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V(Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method public static synthetic t(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z()V

    return-void
.end method

.method public static synthetic u(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method static synthetic v(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic w(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$b;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    return-object p0
.end method

.method static synthetic x(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    return p0
.end method

.method static synthetic y(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    return p1
.end method

.method static synthetic z(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Landroidx/media3/common/r;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o(Landroidx/media3/common/r;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroidx/media3/common/z;)V
    .locals 5

    new-instance v0, Landroidx/media3/common/z;

    iget v1, p1, Landroidx/media3/common/z;->a:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/a1;->o(FFF)F

    move-result v1

    iget v4, p1, Landroidx/media3/common/z;->b:F

    invoke-static {v4, v2, v3}, Landroidx/media3/common/util/a1;->o(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/z;-><init>(FF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h0(Landroidx/media3/common/z;)V

    :goto_0
    return-void
.end method

.method public b0(Landroidx/media3/exoplayer/audio/e;)V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h0:Landroid/os/Looper;

    if-eq v1, v0, :cond_2

    const-string p1, "null"

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current looper ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not the playback looper ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/audio/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioSink$b;->f()V

    :cond_3
    return-void
.end method

.method public c(Ljava/nio/ByteBuffer;JI)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K()Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-object v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-virtual {v5, v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v5

    if-eqz v5, :cond_3

    return v7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    goto :goto_2

    :cond_4
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iput-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    if-eqz v5, :cond_6

    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_5

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v5}, Landroidx/media3/exoplayer/audio/i0;->a(Landroid/media/AudioTrack;)V

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/b0;->a()V

    :cond_5
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    iget v10, v9, Landroidx/media3/common/r;->H:I

    iget v9, v9, Landroidx/media3/common/r;->I:I

    invoke-static {v5, v10, v9}, Landroidx/media3/exoplayer/audio/j0;->a(Landroid/media/AudioTrack;II)V

    iput-boolean v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    :cond_6
    :goto_2
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v5

    if-nez v5, :cond_9

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R()Z

    move-result v5
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_9

    return v7

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-boolean v0, v2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v0, :cond_8

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->c(Ljava/lang/Exception;)V

    return v7

    :cond_8
    throw v2

    :cond_9
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_b

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:J

    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i0()V

    :cond_a
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->play()V

    :cond_b
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroidx/media3/exoplayer/audio/b0;->k(J)Z

    move-result v5

    if-nez v5, :cond_c

    return v7

    :cond_c
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v11, :cond_d

    move v5, v6

    goto :goto_3

    :cond_d
    move v5, v7

    :goto_3
    invoke-static {v5}, Landroidx/media3/common/util/a;->a(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_e

    return v6

    :cond_e
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v11, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-eqz v11, :cond_f

    iget v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:I

    if-nez v11, :cond_f

    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    invoke-static {v5, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M(ILjava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:I

    if-nez v5, :cond_f

    return v6

    :cond_f
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    if-eqz v5, :cond_11

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K()Z

    move-result v5

    if-nez v5, :cond_10

    return v7

    :cond_10
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;

    :cond_11
    iget-wide v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:J

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N()J

    move-result-wide v13

    iget-object v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/exoplayer/audio/f1;

    invoke-virtual {v15}, Landroidx/media3/exoplayer/audio/f1;->h()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-virtual {v5, v13, v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e(J)J

    move-result-wide v13

    add-long/2addr v11, v13

    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    if-nez v5, :cond_13

    sub-long v13, v11, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v5, v13, v15

    if-lez v5, :cond_13

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz v5, :cond_12

    new-instance v13, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v13, v2, v3, v11, v12}, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    invoke-interface {v5, v13}, Landroidx/media3/exoplayer/audio/AudioSink$b;->a(Ljava/lang/Exception;)V

    :cond_12
    iput-boolean v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    :cond_13
    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    if-eqz v5, :cond_15

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K()Z

    move-result v5

    if-nez v5, :cond_14

    return v7

    :cond_14
    sub-long v11, v2, v11

    iget-wide v13, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:J

    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D(J)V

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    if-eqz v5, :cond_15

    cmp-long v9, v11, v9

    if-eqz v9, :cond_15

    invoke-interface {v5}, Landroidx/media3/exoplayer/audio/AudioSink$b;->onPositionDiscontinuity()V

    :cond_15
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-nez v5, :cond_16

    iget-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:J

    goto :goto_4

    :cond_16
    iget-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:J

    iget v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:I

    int-to-long v11, v5

    int-to-long v13, v4

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    iput-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:J

    :goto_4
    iput-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    iput v4, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:I

    :cond_17
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0(J)V

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    iput v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:I

    return v6

    :cond_18
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/b0;->j(J)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_19
    return v7
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_0
    return-void
.end method

.method public disableTunneling()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o0()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/common/z;->d:Landroidx/media3/common/z;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    :goto_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h0(Landroidx/media3/common/z;)V

    return-void
.end method

.method public f(Landroidx/media3/common/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    invoke-virtual {v0, p1}, Landroidx/media3/common/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:Landroidx/media3/exoplayer/audio/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/i;->h(Landroidx/media3/common/c;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return-void
.end method

.method public flush()V
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g0()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/b0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$n;->b(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a()Landroidx/media3/exoplayer/audio/AudioSink$a;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    if-eqz v2, :cond_2

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/b0;->q()V

    sget v2, Landroidx/media3/common/util/a1;->a:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->c()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    invoke-static {v2, v3, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f0(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i0:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public g(Landroidx/media3/common/r;)Landroidx/media3/exoplayer/audio/k;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    invoke-interface {v0, p1, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;->a(Landroidx/media3/common/r;Landroidx/media3/common/c;)Landroidx/media3/exoplayer/audio/k;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPositionUs(Z)J
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/b0;->c()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Landroidx/media3/common/z;

    return-object v0
.end method

.method public h(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/audio/j;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/j;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroidx/media3/exoplayer/audio/j;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:Landroidx/media3/exoplayer/audio/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/i;->i(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:Landroidx/media3/exoplayer/audio/j;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$b;->b(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/j;)V

    :cond_2
    return-void
.end method

.method public handleDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/h0;->a(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/audio/b0;->h(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()J
    .locals 10

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$b;->a(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-nez v1, :cond_2

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    int-to-long v1, v1

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    int-to-long v3, v0

    mul-long/2addr v1, v3

    :goto_0
    move-wide v7, v1

    goto :goto_1

    :cond_2
    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/x0;->d(I)I

    move-result v0

    int-to-long v1, v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j(Landroidx/media3/exoplayer/audio/AudioSink$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioSink$b;

    return-void
.end method

.method public k(I)V
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:I

    return-void
.end method

.method public l(Landroidx/media3/common/r;I[I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0()V

    iget-object v0, v3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget v0, v3, Landroidx/media3/common/r;->G:I

    invoke-static {v0}, Landroidx/media3/common/util/a1;->G0(I)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget v0, v3, Landroidx/media3/common/r;->G:I

    iget v6, v3, Landroidx/media3/common/r;->E:I

    invoke-static {v0, v6}, Landroidx/media3/common/util/a1;->k0(II)I

    move-result v0

    new-instance v6, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    iget v7, v3, Landroidx/media3/common/r;->G:I

    invoke-direct {v1, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n0(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_0

    :cond_0
    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Lt1/n;

    invoke-interface {v7}, Lt1/n;->getAudioProcessors()[Landroidx/media3/common/audio/AudioProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :goto_0
    new-instance v7, Landroidx/media3/common/audio/a;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v7, v6}, Landroidx/media3/common/audio/a;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    invoke-virtual {v7, v6}, Landroidx/media3/common/audio/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    :cond_1
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/exoplayer/audio/f1;

    iget v8, v3, Landroidx/media3/common/r;->H:I

    iget v9, v3, Landroidx/media3/common/r;->I:I

    invoke-virtual {v6, v8, v9}, Landroidx/media3/exoplayer/audio/f1;->j(II)V

    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/c0;

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/audio/c0;->h([I)V

    new-instance v6, Landroidx/media3/common/audio/AudioProcessor$a;

    invoke-direct {v6, v3}, Landroidx/media3/common/audio/AudioProcessor$a;-><init>(Landroidx/media3/common/r;)V

    :try_start_0
    invoke-virtual {v7, v6}, Landroidx/media3/common/audio/a;->a(Landroidx/media3/common/audio/AudioProcessor$a;)Landroidx/media3/common/audio/AudioProcessor$a;

    move-result-object v6
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget v8, v6, Landroidx/media3/common/audio/AudioProcessor$a;->c:I

    iget v9, v6, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    iget v10, v6, Landroidx/media3/common/audio/AudioProcessor$a;->b:I

    invoke-static {v10}, Landroidx/media3/common/util/a1;->M(I)I

    move-result v10

    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$a;->b:I

    invoke-static {v8, v6}, Landroidx/media3/common/util/a1;->k0(II)I

    move-result v6

    iget-boolean v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Z

    move v15, v5

    move/from16 v18, v15

    move v13, v6

    move-object/from16 v16, v7

    move v14, v9

    move v12, v10

    move/from16 v17, v11

    move v11, v8

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/r;)V

    throw v0

    :cond_2
    new-instance v0, Landroidx/media3/common/audio/a;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v0, v6}, Landroidx/media3/common/audio/a;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget v6, v3, Landroidx/media3/common/r;->F:I

    iget v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:I

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g(Landroidx/media3/common/r;)Landroidx/media3/exoplayer/audio/k;

    move-result-object v7

    goto :goto_1

    :cond_3
    sget-object v7, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    :goto_1
    iget v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:I

    if-eqz v8, :cond_4

    iget-boolean v8, v7, Landroidx/media3/exoplayer/audio/k;->a:Z

    if-eqz v8, :cond_4

    iget-object v8, v3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/media3/common/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget v9, v3, Landroidx/media3/common/r;->E:I

    invoke-static {v9}, Landroidx/media3/common/util/a1;->M(I)I

    move-result v9

    iget-boolean v7, v7, Landroidx/media3/exoplayer/audio/k;->b:Z

    move-object/from16 v16, v0

    move v15, v2

    move/from16 v17, v15

    move v0, v4

    move v13, v0

    move v14, v6

    move/from16 v18, v7

    move v11, v8

    move v12, v9

    goto :goto_2

    :cond_4
    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    iget-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    invoke-virtual {v7, v3, v8}, Landroidx/media3/exoplayer/audio/e;->h(Landroidx/media3/common/r;Landroidx/media3/common/c;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Z

    const/4 v10, 0x2

    move-object/from16 v16, v0

    move v0, v4

    move v13, v0

    move/from16 v18, v5

    move v14, v6

    move v12, v7

    move v11, v8

    move/from16 v17, v9

    move v15, v10

    :goto_2
    const-string v6, ") for: "

    if-eqz v11, :cond_b

    if-eqz v12, :cond_a

    iget v6, v3, Landroidx/media3/common/r;->j:I

    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    iget-object v8, v3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v6, v4, :cond_5

    const v6, 0xbb800

    :cond_5
    move/from16 v19, v6

    if-eqz p2, :cond_6

    move/from16 v10, p2

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v19, v14

    goto :goto_6

    :cond_6
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    invoke-static {v14, v12, v11}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L(III)I

    move-result v7

    if-eq v13, v4, :cond_7

    move v10, v13

    goto :goto_3

    :cond_7
    move v10, v2

    :goto_3
    if-eqz v17, :cond_8

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    :goto_4
    move-wide/from16 v20, v8

    goto :goto_5

    :cond_8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :goto_5
    move v8, v11

    move v9, v15

    move/from16 v22, v11

    move v11, v14

    move/from16 v23, v12

    move/from16 v12, v19

    move/from16 v24, v13

    move/from16 v19, v14

    move-wide/from16 v13, v20

    invoke-interface/range {v6 .. v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;->a(IIIIIID)I

    move-result v2

    move v10, v2

    :goto_6
    iput-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    new-instance v14, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    iget-boolean v13, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    move-object v2, v14

    move-object/from16 v3, p1

    move v4, v0

    move v5, v15

    move/from16 v6, v24

    move/from16 v7, v19

    move/from16 v8, v23

    move/from16 v9, v22

    move-object/from16 v11, v16

    move/from16 v12, v17

    move v0, v13

    move/from16 v13, v18

    move-object v15, v14

    move v14, v0

    invoke-direct/range {v2 .. v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;-><init>(Landroidx/media3/common/r;IIIIIIILandroidx/media3/common/audio/a;ZZZ)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    goto :goto_7

    :cond_9
    iput-object v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    :goto_7
    return-void

    :cond_a
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output channel config (mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/r;)V

    throw v0

    :cond_b
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output encoding (mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/r;)V

    throw v0

    :cond_c
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/r;)V

    throw v0
.end method

.method public m(II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/audio/j0;->a(Landroid/media/AudioTrack;II)V

    :cond_0
    return-void
.end method

.method public synthetic n(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/audio/y;->a(Landroidx/media3/exoplayer/audio/AudioSink;J)V

    return-void
.end method

.method public o(Landroidx/media3/common/r;)I
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0()V

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p1, Landroidx/media3/common/r;->G:I

    invoke-static {v0}, Landroidx/media3/common/util/a1;->G0(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/media3/common/r;->G:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget p1, p1, Landroidx/media3/common/r;->G:I

    if-eq p1, v2, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Landroidx/media3/exoplayer/audio/e;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:Landroidx/media3/common/c;

    invoke-virtual {v0, p1, v3}, Landroidx/media3/exoplayer/audio/e;->j(Landroidx/media3/common/r;Landroidx/media3/common/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public p(Ly1/f4;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Ly1/f4;

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/b0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/b0;->v()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    :cond_0
    return-void
.end method

.method public q(Landroidx/media3/common/f;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:Landroidx/media3/common/f;

    invoke-virtual {v0, p1}, Landroidx/media3/common/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroidx/media3/common/f;->a:I

    iget v1, p1, Landroidx/media3/common/f;->b:F

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:Landroidx/media3/common/f;

    iget v3, v3, Landroidx/media3/common/f;->a:I

    if-eq v3, v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:Landroidx/media3/common/f;

    return-void
.end method

.method public r(Landroidx/media3/common/util/i;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Landroidx/media3/exoplayer/audio/b0;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/b0;->u(Landroidx/media3/common/util/i;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:Landroidx/media3/exoplayer/audio/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/i;->j()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v1}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v1}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/common/audio/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/audio/a;->j()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k0()V

    :cond_0
    return-void
.end method
