.class Lt2/e$a;
.super Ll2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt2/e;->f(Ll2/m0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ll2/m0;

.field final synthetic c:Lt2/e;


# direct methods
.method constructor <init>(Lt2/e;Ll2/m0;Ll2/m0;)V
    .locals 0

    iput-object p1, p0, Lt2/e$a;->c:Lt2/e;

    iput-object p3, p0, Lt2/e$a;->b:Ll2/m0;

    invoke-direct {p0, p2}, Ll2/d0;-><init>(Ll2/m0;)V

    return-void
.end method


# virtual methods
.method public getSeekPoints(J)Ll2/m0$a;
    .locals 8

    iget-object v0, p0, Lt2/e$a;->b:Ll2/m0;

    invoke-interface {v0, p1, p2}, Ll2/m0;->getSeekPoints(J)Ll2/m0$a;

    move-result-object p1

    new-instance p2, Ll2/m0$a;

    new-instance v0, Ll2/n0;

    iget-object v1, p1, Ll2/m0$a;->a:Ll2/n0;

    iget-wide v2, v1, Ll2/n0;->a:J

    iget-wide v4, v1, Ll2/n0;->b:J

    iget-object v1, p0, Lt2/e$a;->c:Lt2/e;

    invoke-static {v1}, Lt2/e;->a(Lt2/e;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Ll2/n0;-><init>(JJ)V

    new-instance v1, Ll2/n0;

    iget-object p1, p1, Ll2/m0$a;->b:Ll2/n0;

    iget-wide v2, p1, Ll2/n0;->a:J

    iget-wide v4, p1, Ll2/n0;->b:J

    iget-object p1, p0, Lt2/e$a;->c:Lt2/e;

    invoke-static {p1}, Lt2/e;->a(Lt2/e;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Ll2/n0;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Ll2/m0$a;-><init>(Ll2/n0;Ll2/n0;)V

    return-object p2
.end method
