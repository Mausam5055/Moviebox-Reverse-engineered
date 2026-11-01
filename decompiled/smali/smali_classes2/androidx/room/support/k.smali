.class public final synthetic Landroidx/room/support/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/room/support/AutoClosingRoomOpenHelper$a;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/support/AutoClosingRoomOpenHelper$a;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/k;->a:Landroidx/room/support/AutoClosingRoomOpenHelper$a;

    iput-object p2, p0, Landroidx/room/support/k;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/support/k;->a:Landroidx/room/support/AutoClosingRoomOpenHelper$a;

    iget-object v1, p0, Landroidx/room/support/k;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, La4/d;

    invoke-static {v0, v1, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->i(Landroidx/room/support/AutoClosingRoomOpenHelper$a;Lkotlin/jvm/functions/Function1;La4/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
