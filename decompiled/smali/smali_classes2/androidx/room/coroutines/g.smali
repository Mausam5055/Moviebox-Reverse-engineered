.class public final synthetic Landroidx/room/coroutines/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/room/coroutines/ConnectionPoolImpl;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/room/coroutines/ConnectionPoolImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/g;->a:Landroidx/room/coroutines/ConnectionPoolImpl;

    iput-boolean p2, p0, Landroidx/room/coroutines/g;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/coroutines/g;->a:Landroidx/room/coroutines/ConnectionPoolImpl;

    iget-boolean v1, p0, Landroidx/room/coroutines/g;->b:Z

    invoke-static {v0, v1}, Landroidx/room/coroutines/ConnectionPoolImpl;->b(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
