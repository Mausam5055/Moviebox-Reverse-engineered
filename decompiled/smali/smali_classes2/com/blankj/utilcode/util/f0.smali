.class public abstract Lcom/blankj/utilcode/util/f0;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Vibrator;


# direct methods
.method private static a()Landroid/os/Vibrator;
    .locals 2

    sget-object v0, Lcom/blankj/utilcode/util/f0;->a:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/blankj/utilcode/util/f0;->a:Landroid/os/Vibrator;

    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/f0;->a:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static b(J)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/f0;->a()Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
