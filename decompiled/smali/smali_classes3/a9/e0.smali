.class public final synthetic La9/e0;
.super Ljava/lang/Object;

# interfaces
.implements La9/m0$d;


# instance fields
.field public final synthetic a:La9/v0;


# direct methods
.method public synthetic constructor <init>(La9/v0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/e0;->a:La9/v0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La9/e0;->a:La9/v0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
