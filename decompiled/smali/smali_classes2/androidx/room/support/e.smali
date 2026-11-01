.class public final synthetic Landroidx/room/support/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/e;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/support/e;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/support/e;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/support/e;->b:[Ljava/lang/Object;

    check-cast p1, La4/d;

    invoke-static {v0, v1, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->h(Ljava/lang/String;[Ljava/lang/Object;La4/d;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
