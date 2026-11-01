.class public Lcom/mbridge/msdk/tracker/network/toolbox/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/w;ILcom/mbridge/msdk/tracker/network/b;)Lcom/mbridge/msdk/tracker/network/u;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Lcom/mbridge/msdk/tracker/network/toolbox/b;

    new-instance v0, Lcom/mbridge/msdk/tracker/network/toolbox/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/tracker/network/toolbox/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/tracker/network/toolbox/b;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/mbridge/msdk/tracker/network/f;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/tracker/network/f;-><init>(Landroid/os/Handler;)V

    :cond_1
    if-gtz p2, :cond_2

    const/4 p2, 0x4

    :cond_2
    if-nez p3, :cond_3

    new-instance p3, Lcom/mbridge/msdk/tracker/network/toolbox/l;

    invoke-direct {p3}, Lcom/mbridge/msdk/tracker/network/toolbox/l;-><init>()V

    :cond_3
    new-instance v0, Lcom/mbridge/msdk/tracker/network/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mbridge/msdk/tracker/network/u;-><init>(Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/w;ILcom/mbridge/msdk/tracker/network/b;)V

    return-object v0
.end method
