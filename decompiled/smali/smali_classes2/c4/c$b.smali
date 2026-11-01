.class final Lc4/c$b;
.super Lc4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final e:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sql"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc4/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    const-string p2, "compileStatement(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    iget-object v0, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 v0, 0x0

    return v0
.end method

.method public a(ID)V
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    iget-object v0, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public c(IJ)V
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    iget-object v0, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc4/c;->i(Z)V

    return-void
.end method

.method public e(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc4/c;->k()V

    iget-object v0, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public g(I)V
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    iget-object v0, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getColumnCount()I
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getDouble(I)D
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getLong(I)J
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

    const/16 p1, 0x15

    const-string v0, "no row"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public isNull(I)Z
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

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

    invoke-virtual {p0}, Lc4/c;->k()V

    iget-object v0, p0, Lc4/c$b;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public n0(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc4/c;->k()V

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
