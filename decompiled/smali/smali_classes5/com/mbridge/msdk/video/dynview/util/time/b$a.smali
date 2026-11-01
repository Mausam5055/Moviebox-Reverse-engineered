.class Lcom/mbridge/msdk/video/dynview/util/time/b$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/dynview/util/time/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/dynview/util/time/a;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method a(Lcom/mbridge/msdk/video/dynview/util/time/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/util/time/b$a;->a:Lcom/mbridge/msdk/video/dynview/util/time/a;

    return-void
.end method

.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b$a;->a:Lcom/mbridge/msdk/video/dynview/util/time/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/dynview/util/time/a;->onFinish()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/time/b$a;->a:Lcom/mbridge/msdk/video/dynview/util/time/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/video/dynview/util/time/a;->onTick(J)V

    :cond_0
    return-void
.end method
