.class public final synthetic Landroidx/room/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/y;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/y;->a:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lz3/b;

    invoke-static {v0, p1}, Landroidx/room/RoomDatabase;->a(Lkotlin/jvm/functions/Function0;Lz3/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
