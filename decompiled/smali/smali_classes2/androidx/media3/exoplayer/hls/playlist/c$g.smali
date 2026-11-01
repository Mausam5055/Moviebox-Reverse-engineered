.class public abstract Landroidx/media3/exoplayer/hls/playlist/c$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/media3/exoplayer/hls/playlist/c$f;

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:Landroidx/media3/common/DrmInitData;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:J

.field public final k:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->b:Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    move v1, p5

    iput v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->d:I

    move-wide v1, p6

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    move-object v1, p8

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->f:Landroidx/media3/common/DrmInitData;

    move-object v1, p9

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->g:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->i:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->j:J

    move/from16 v1, p15

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->k:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLandroidx/media3/exoplayer/hls/playlist/c$a;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Landroidx/media3/exoplayer/hls/playlist/c$g;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/c$g;->a(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
