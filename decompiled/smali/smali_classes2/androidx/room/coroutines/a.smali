.class public final synthetic Landroidx/room/coroutines/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/room/coroutines/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/coroutines/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/a;->a:Landroidx/room/coroutines/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/a;->a:Landroidx/room/coroutines/b;

    invoke-static {v0}, Landroidx/room/coroutines/b;->b(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    move-result-object v0

    return-object v0
.end method
