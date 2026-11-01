.class final Landroidx/room/driver/d$c;
.super Landroidx/room/driver/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/driver/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final e:La4/h;


# direct methods
.method public constructor <init>(La4/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sql"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/room/driver/d;-><init>(La4/d;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2}, La4/d;->W(Ljava/lang/String;)La4/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/driver/d$c;->e:La4/h;

    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    iget-object v0, p0, Landroidx/room/driver/d$c;->e:La4/h;

    invoke-interface {v0}, La4/h;->execute()V

    const/4 v0, 0x0

    return v0
.end method

.method public a(ID)V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    iget-object v0, p0, Landroidx/room/driver/d$c;->e:La4/h;

    invoke-interface {v0, p1, p2, p3}, La4/f;->a(ID)V

    return-void
.end method

.method public c(IJ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    iget-object v0, p0, Landroidx/room/driver/d$c;->e:La4/h;

    invoke-interface {v0, p1, p2, p3}, La4/f;->c(IJ)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/d$c;->e:La4/h;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/room/driver/d;->i(Z)V

    return-void
.end method

.method public e(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    iget-object v0, p0, Landroidx/room/driver/d$c;->e:La4/h;

    invoke-interface {v0, p1, p2}, La4/f;->e(I[B)V

    return-void
.end method

.method public g(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    iget-object v0, p0, Landroidx/room/driver/d$c;->e:La4/h;

    invoke-interface {v0, p1}, La4/f;->g(I)V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getColumnCount()I
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getDouble(I)D
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getLong(I)J
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public isNull(I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public j(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    iget-object v0, p0, Landroidx/room/driver/d$c;->e:La4/h;

    invoke-interface {v0, p1, p2}, La4/f;->y(ILjava/lang/String;)V

    return-void
.end method

.method public n0(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/d;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
