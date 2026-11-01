.class public final Landroidx/room/driver/a;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/b;


# instance fields
.field private final a:La4/d;


# direct methods
.method public constructor <init>(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/driver/a;->a:La4/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic D0(Ljava/lang/String;)Lz3/e;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/driver/a;->h(Ljava/lang/String;)Landroidx/room/driver/d;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/a;->a:La4/d;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final d()La4/d;
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/a;->a:La4/d;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Landroidx/room/driver/d;
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/room/driver/d;->d:Landroidx/room/driver/d$a;

    iget-object v1, p0, Landroidx/room/driver/a;->a:La4/d;

    invoke-virtual {v0, v1, p1}, Landroidx/room/driver/d$a;->a(La4/d;Ljava/lang/String;)Landroidx/room/driver/d;

    move-result-object p1

    return-object p1
.end method
