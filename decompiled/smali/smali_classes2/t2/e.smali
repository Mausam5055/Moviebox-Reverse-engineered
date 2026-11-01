.class public final Lt2/e;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/t;


# instance fields
.field private final a:J

.field private final b:Ll2/t;


# direct methods
.method public constructor <init>(JLl2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt2/e;->a:J

    iput-object p3, p0, Lt2/e;->b:Ll2/t;

    return-void
.end method

.method static synthetic a(Lt2/e;)J
    .locals 2

    iget-wide v0, p0, Lt2/e;->a:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    iget-object v0, p0, Lt2/e;->b:Ll2/t;

    invoke-interface {v0}, Ll2/t;->endTracks()V

    return-void
.end method

.method public f(Ll2/m0;)V
    .locals 2

    iget-object v0, p0, Lt2/e;->b:Ll2/t;

    new-instance v1, Lt2/e$a;

    invoke-direct {v1, p0, p1, p1}, Lt2/e$a;-><init>(Lt2/e;Ll2/m0;Ll2/m0;)V

    invoke-interface {v0, v1}, Ll2/t;->f(Ll2/m0;)V

    return-void
.end method

.method public track(II)Ll2/s0;
    .locals 1

    iget-object v0, p0, Lt2/e;->b:Ll2/t;

    invoke-interface {v0, p1, p2}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    return-object p1
.end method
