.class public Lcom/blankj/utilcode/util/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/s$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/blankj/utilcode/util/s$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/s$a;->b()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-static {v2, v3}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompat$m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;)V

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/blankj/utilcode/util/s$a;->a(Lcom/blankj/utilcode/util/s$a;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/r;->a(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$m;->m(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/Utils$b;->accept(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
