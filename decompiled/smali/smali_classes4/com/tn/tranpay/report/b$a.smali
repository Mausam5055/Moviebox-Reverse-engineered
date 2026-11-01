.class public abstract Lcom/tn/tranpay/report/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/tranpay/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/tn/tranpay/report/b;)Lcom/tn/tranpay/report/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/tn/tranpay/report/b;)V
    .locals 1

    invoke-interface {p0}, Lcom/tn/tranpay/report/b;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tn/tranpay/report/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    invoke-virtual {v0, p0}, Lcom/tn/tranpay/report/e;->f(Lcom/tn/tranpay/report/c;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/tn/tranpay/report/b;)V
    .locals 2

    invoke-interface {p0}, Lcom/tn/tranpay/report/b;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tn/tranpay/report/c;->k(J)V

    invoke-virtual {p0}, Lcom/tn/tranpay/report/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    invoke-virtual {v0, p0}, Lcom/tn/tranpay/report/e;->g(Lcom/tn/tranpay/report/c;)V

    :cond_0
    return-void
.end method
