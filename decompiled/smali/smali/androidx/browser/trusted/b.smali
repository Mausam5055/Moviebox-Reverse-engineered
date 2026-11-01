.class abstract Landroidx/browser/trusted/b;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p3, p4, v0}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p4

    invoke-static {p1, p4}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    invoke-static {p1, p3}, Lm/a;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-static {p1}, Lm/b;->a(Landroid/app/NotificationChannel;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p2}, Lm/d;->a(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-static {p0, p3}, Lm/e;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/app/NotificationManager;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lm/a;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lm/b;->a(Landroid/app/NotificationChannel;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
