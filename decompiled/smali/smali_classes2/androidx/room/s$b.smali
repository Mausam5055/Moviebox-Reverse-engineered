.class public final Landroidx/room/s$b;
.super La4/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Landroidx/room/s;


# direct methods
.method public constructor <init>(Landroidx/room/s;I)V
    .locals 0

    iput-object p1, p0, Landroidx/room/s$b;->c:Landroidx/room/s;

    invoke-direct {p0, p2}, La4/e$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(La4/d;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/s$b;->c:Landroidx/room/s;

    new-instance v1, Landroidx/room/driver/a;

    invoke-direct {v1, p1}, Landroidx/room/driver/a;-><init>(La4/d;)V

    invoke-virtual {v0, v1}, Landroidx/room/a;->x(Lz3/b;)V

    return-void
.end method

.method public e(La4/d;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/s$b;->g(La4/d;II)V

    return-void
.end method

.method public f(La4/d;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/s$b;->c:Landroidx/room/s;

    new-instance v1, Landroidx/room/driver/a;

    invoke-direct {v1, p1}, Landroidx/room/driver/a;-><init>(La4/d;)V

    invoke-virtual {v0, v1}, Landroidx/room/a;->z(Lz3/b;)V

    iget-object v0, p0, Landroidx/room/s$b;->c:Landroidx/room/s;

    invoke-static {v0, p1}, Landroidx/room/s;->E(Landroidx/room/s;La4/d;)V

    return-void
.end method

.method public g(La4/d;II)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/s$b;->c:Landroidx/room/s;

    new-instance v1, Landroidx/room/driver/a;

    invoke-direct {v1, p1}, Landroidx/room/driver/a;-><init>(La4/d;)V

    invoke-virtual {v0, v1, p2, p3}, Landroidx/room/a;->y(Lz3/b;II)V

    return-void
.end method
