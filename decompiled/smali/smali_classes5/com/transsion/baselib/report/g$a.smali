.class public abstract Lcom/transsion/baselib/report/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/report/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/transsion/baselib/report/g;)Lhj/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/transsion/baselib/report/g;)V
    .locals 1

    invoke-interface {p0}, Lcom/transsion/baselib/report/g;->getLogViewConfig()Lhj/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhj/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0, p0}, Lhj/i;->B(Lhj/b;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/transsion/baselib/report/g;)V
    .locals 2

    invoke-interface {p0}, Lcom/transsion/baselib/report/g;->getLogViewConfig()Lhj/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lhj/b;->o(J)V

    invoke-virtual {p0}, Lhj/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0, p0}, Lhj/i;->C(Lhj/b;)V

    :cond_0
    return-void
.end method
