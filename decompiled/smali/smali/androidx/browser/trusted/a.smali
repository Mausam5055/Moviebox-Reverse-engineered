.class public abstract Landroidx/browser/trusted/a;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/app/NotificationManager;)[Landroid/os/Parcelable;
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method
