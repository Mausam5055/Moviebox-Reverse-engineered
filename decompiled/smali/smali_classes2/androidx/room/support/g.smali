.class public final synthetic Landroidx/room/support/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContentValues;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/g;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/room/support/g;->b:I

    iput-object p3, p0, Landroidx/room/support/g;->c:Landroid/content/ContentValues;

    iput-object p4, p0, Landroidx/room/support/g;->d:Ljava/lang/String;

    iput-object p5, p0, Landroidx/room/support/g;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/room/support/g;->a:Ljava/lang/String;

    iget v1, p0, Landroidx/room/support/g;->b:I

    iget-object v2, p0, Landroidx/room/support/g;->c:Landroid/content/ContentValues;

    iget-object v3, p0, Landroidx/room/support/g;->d:Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/support/g;->e:[Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, La4/d;

    invoke-static/range {v0 .. v5}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->l(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;La4/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
