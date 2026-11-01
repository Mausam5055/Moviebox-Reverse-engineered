.class public abstract Landroidx/room/RoomDatabase$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/room/driver/a;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/room/driver/a;

    invoke-virtual {p1}, Landroidx/room/driver/a;->d()La4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$b;->a(La4/d;)V

    :cond_0
    return-void
.end method

.method public c(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/room/driver/a;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/room/driver/a;

    invoke-virtual {p1}, Landroidx/room/driver/a;->d()La4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$b;->c(La4/d;)V

    :cond_0
    return-void
.end method

.method public e(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/room/driver/a;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/room/driver/a;

    invoke-virtual {p1}, Landroidx/room/driver/a;->d()La4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$b;->e(La4/d;)V

    :cond_0
    return-void
.end method
