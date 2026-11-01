.class public final synthetic Landroidx/room/u;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/room/RoomDatabase;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/u;->a:Landroidx/room/RoomDatabase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/u;->a:Landroidx/room/RoomDatabase;

    check-cast p1, Landroidx/room/c;

    invoke-static {v0, p1}, Landroidx/room/RoomDatabase;->f(Landroidx/room/RoomDatabase;Landroidx/room/c;)La4/e;

    move-result-object p1

    return-object p1
.end method
