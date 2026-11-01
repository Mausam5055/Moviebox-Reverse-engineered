.class public final Landroidx/room/RoomTrackingLiveData$a;
.super Landroidx/room/InvalidationTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/k;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/room/RoomTrackingLiveData;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData$a;->b:Landroidx/room/RoomTrackingLiveData;

    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$b;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/RoomTrackingLiveData$a;->e(Landroidx/room/RoomTrackingLiveData;)V

    return-void
.end method

.method private static final e(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/RoomTrackingLiveData;->r(Landroidx/room/RoomTrackingLiveData;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Set;)V
    .locals 2

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lj/c;->h()Lj/c;

    move-result-object p1

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData$a;->b:Landroidx/room/RoomTrackingLiveData;

    new-instance v1, Landroidx/room/h0;

    invoke-direct {v1, v0}, Landroidx/room/h0;-><init>(Landroidx/room/RoomTrackingLiveData;)V

    invoke-virtual {p1, v1}, Lj/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method
