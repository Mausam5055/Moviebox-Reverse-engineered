.class public final synthetic Landroidx/room/support/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/f;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/room/support/f;->b:I

    iput-object p3, p0, Landroidx/room/support/f;->c:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/room/support/f;->a:Ljava/lang/String;

    iget v1, p0, Landroidx/room/support/f;->b:I

    iget-object v2, p0, Landroidx/room/support/f;->c:Landroid/content/ContentValues;

    check-cast p1, La4/d;

    invoke-static {v0, v1, v2, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->d(Ljava/lang/String;ILandroid/content/ContentValues;La4/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
