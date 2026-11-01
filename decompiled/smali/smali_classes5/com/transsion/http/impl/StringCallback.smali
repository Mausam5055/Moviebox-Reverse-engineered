.class public abstract Lcom/transsion/http/impl/StringCallback;
.super Lcom/transsion/http/impl/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/http/impl/q;-><init>()V

    return-void
.end method

.method public static w([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "\ufeff"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public m(I[BLjava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lcom/transsion/http/impl/o;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/transsion/http/impl/o;-><init>(Lcom/transsion/http/impl/StringCallback;[BILjava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->j()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public s(I[B)V
    .locals 1

    new-instance v0, Lcom/transsion/http/impl/l;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/http/impl/l;-><init>(Lcom/transsion/http/impl/StringCallback;[BI)V

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->j()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public abstract x(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract y(ILjava/lang/String;)V
.end method
