.class public final synthetic Landroidx/sqlite/db/framework/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic a:La4/e$a;

.field public final synthetic b:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$b;


# direct methods
.method public synthetic constructor <init>(La4/e$a;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/framework/a;->a:La4/e$a;

    iput-object p2, p0, Landroidx/sqlite/db/framework/a;->b:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$b;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Landroidx/sqlite/db/framework/a;->a:La4/e$a;

    iget-object v1, p0, Landroidx/sqlite/db/framework/a;->b:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$b;

    invoke-static {v0, v1, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->b(La4/e$a;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$b;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
