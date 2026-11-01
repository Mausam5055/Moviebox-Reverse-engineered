.class public final Lc4/a;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/b;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public D0(Ljava/lang/String;)Lz3/e;
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc4/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc4/c;->d:Lc4/c$a;

    iget-object v1, p0, Lc4/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lc4/c$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lc4/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x15

    const-string v0, "connection is closed"

    invoke-static {p1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lc4/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final d()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lc4/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
