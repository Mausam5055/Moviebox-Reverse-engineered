.class public abstract synthetic Lj4/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lj4/c;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Lj4/c;->c()Lj4/a;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
