.class public abstract synthetic Lcom/transsion/push/service/a;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Lcom/transsion/push/service/JobIntentService$f;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
