.class public abstract Lbw/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:J


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UpgradeSdkManager"

    const-string v1, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lbw/g;->c()Z

    sget-object p0, Lyv/f;->o:Lyv/d;

    invoke-virtual {p0}, Lyv/d;->a()Lyv/f;

    move-result-object p0

    iget-boolean p0, p0, Lyv/f;->d:Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lbw/g;->c()Z

    sget-object p0, Lyv/f;->o:Lyv/d;

    invoke-virtual {p0}, Lyv/d;->a()Lyv/f;

    move-result-object p0

    iget-boolean p0, p0, Lyv/f;->d:Z

    return-void
.end method

.method public static c()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_0

    return v2

    :cond_0
    sget-wide v3, Lbw/g;->b:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    return v2

    :cond_1
    sput-wide v0, Lbw/g;->b:J

    const-string v0, "upgradeSdkLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lbw/g;->a:Z

    :cond_2
    sget-boolean v0, Lbw/g;->a:Z

    return v0
.end method
