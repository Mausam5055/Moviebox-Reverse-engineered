.class public abstract synthetic Ly3/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ly3/b;Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/room/driver/a;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/room/driver/a;

    invoke-virtual {p1}, Landroidx/room/driver/a;->d()La4/d;

    move-result-object p1

    invoke-interface {p0, p1}, Ly3/b;->b(La4/d;)V

    :cond_0
    return-void
.end method
