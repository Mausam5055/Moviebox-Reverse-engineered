.class public final Landroidx/room/b0;
.super Landroidx/room/RoomTrackingLiveData;


# instance fields
.field private final t:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/k;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableNames"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lambdaFunction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/k;Z[Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p5, p0, Landroidx/room/b0;->t:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->u()Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->v()Z

    move-result v1

    iget-object v2, p0, Landroidx/room/b0;->t:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
