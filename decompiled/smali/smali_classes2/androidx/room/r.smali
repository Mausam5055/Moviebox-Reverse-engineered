.class public final synthetic Landroidx/room/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/room/s;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/r;->a:Landroidx/room/s;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/r;->a:Landroidx/room/s;

    check-cast p1, La4/d;

    invoke-static {v0, p1}, Landroidx/room/s;->C(Landroidx/room/s;La4/d;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
