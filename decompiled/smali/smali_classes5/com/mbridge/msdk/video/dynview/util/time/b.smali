.class public Lcom/mbridge/msdk/video/dynview/util/time/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/dynview/util/time/b$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/mbridge/msdk/video/dynview/util/time/a;

.field private d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->a:J

    return-void
.end method


# virtual methods
.method public a(J)Lcom/mbridge/msdk/video/dynview/util/time/b;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x3e8

    :cond_0
    iput-wide p1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->b:J

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/video/dynview/util/time/a;)Lcom/mbridge/msdk/video/dynview/util/time/b;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->c:Lcom/mbridge/msdk/video/dynview/util/time/a;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    :cond_0
    return-void
.end method

.method public a(JLcom/mbridge/msdk/video/dynview/util/time/a;)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->a:J

    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->c:Lcom/mbridge/msdk/video/dynview/util/time/a;

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/dynview/util/time/b;->b()V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public b(J)Lcom/mbridge/msdk/video/dynview/util/time/b;
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->a:J

    return-object p0
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    :cond_0
    iget-wide v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->a:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->b:J

    :cond_1
    new-instance v0, Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    iget-wide v1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->a:J

    iget-wide v3, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/video/dynview/util/time/b$a;-><init>(JJ)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->c:Lcom/mbridge/msdk/video/dynview/util/time/a;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/dynview/util/time/b$a;->a(Lcom/mbridge/msdk/video/dynview/util/time/a;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/dynview/util/time/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b;->d:Lcom/mbridge/msdk/video/dynview/util/time/b$a;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
