.class Lcom/mbridge/msdk/click/retry/a$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/retry/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/click/retry/a;->b()Lcom/mbridge/msdk/click/retry/a;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/click/retry/a;->a(Lcom/mbridge/msdk/click/retry/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/click/retry/a;->b()Lcom/mbridge/msdk/click/retry/a;

    move-result-object v0

    sget v1, Lcom/mbridge/msdk/click/retry/b;->k:I

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/click/retry/a;->a(Lcom/mbridge/msdk/click/retry/a;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
