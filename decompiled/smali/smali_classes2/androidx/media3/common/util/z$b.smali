.class abstract Landroidx/media3/common/util/z$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/z$b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroidx/media3/common/util/z;)V
    .locals 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    new-instance v0, Landroidx/media3/common/util/z$b$a;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/z$b$a;-><init>(Landroidx/media3/common/util/z;)V

    invoke-static {p1}, Landroidx/media3/common/util/z;->b(Landroidx/media3/common/util/z;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/media3/common/util/a0;->a(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    invoke-static {p0, v0}, Landroidx/media3/common/util/b0;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x5

    invoke-static {p1, p0}, Landroidx/media3/common/util/z;->d(Landroidx/media3/common/util/z;I)V

    :goto_0
    return-void
.end method
