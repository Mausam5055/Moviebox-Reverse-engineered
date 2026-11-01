.class public final Lcom/apm/insight/j/c;
.super Lcom/apm/insight/j/a;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const-wide/16 v0, 0x3a98

    invoke-direct {p0, p1, v0, v1}, Lcom/apm/insight/j/a;-><init>(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/apm/insight/e;->c()Lcom/apm/insight/runtime/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/apm/insight/e;->a()Lcom/apm/insight/nativecrash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/apm/insight/e;->c()Lcom/apm/insight/runtime/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apm/insight/runtime/g;->a(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DeviceIdTask] did is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/apm/insight/j/a;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/apm/insight/j/a;->a(J)V

    const-string v0, "[DeviceIdTask] did is null, continue check."

    invoke-static {v0}, Lcom/apm/insight/a;->a(Ljava/lang/Object;)V

    return-void
.end method
