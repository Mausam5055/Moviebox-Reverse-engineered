.class abstract Landroidx/core/app/NotificationCompat$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/app/RemoteInput;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result p0

    return p0
.end method

.method static b(Landroid/app/RemoteInput;)[Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/app/Notification$Action;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/app/RemoteInput;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(Landroid/app/RemoteInput;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static g(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static h(Landroid/app/RemoteInput;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static i(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
