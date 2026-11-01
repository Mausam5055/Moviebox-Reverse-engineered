.class final Landroidx/room/driver/SupportSQLitePooledConnection$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/room/n0;
.implements Landroidx/room/coroutines/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/driver/SupportSQLitePooledConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/driver/SupportSQLitePooledConnection;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLitePooledConnection;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection$a;->a:Landroidx/room/driver/SupportSQLitePooledConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lz3/b;
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/SupportSQLitePooledConnection$a;->a:Landroidx/room/driver/SupportSQLitePooledConnection;

    invoke-virtual {v0}, Landroidx/room/driver/SupportSQLitePooledConnection;->c()Lz3/b;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/SupportSQLitePooledConnection$a;->a:Landroidx/room/driver/SupportSQLitePooledConnection;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/driver/SupportSQLitePooledConnection;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
