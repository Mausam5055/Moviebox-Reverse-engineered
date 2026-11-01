.class public final synthetic Landroidx/room/coroutines/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lz3/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lz3/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/f;->a:Lz3/c;

    iput-object p2, p0, Landroidx/room/coroutines/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/coroutines/f;->a:Lz3/c;

    iget-object v1, p0, Landroidx/room/coroutines/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/room/coroutines/ConnectionPoolImpl;->i(Lz3/c;Ljava/lang/String;)Lz3/b;

    move-result-object v0

    return-object v0
.end method
