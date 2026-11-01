.class abstract Landroidx/core/app/NotificationCompat$n$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/graphics/drawable/Icon;)Landroid/os/Parcelable;
    .locals 0

    return-object p0
.end method

.method static b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    return-void
.end method
