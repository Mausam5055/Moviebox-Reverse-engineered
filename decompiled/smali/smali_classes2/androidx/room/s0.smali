.class public final Landroidx/room/s0;
.super Landroidx/room/InvalidationTracker$b;


# instance fields
.field private final b:Landroidx/room/InvalidationTracker;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$b;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/room/InvalidationTracker$b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/room/InvalidationTracker$b;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/s0;->b:Landroidx/room/InvalidationTracker;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/room/s0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Set;)V
    .locals 1

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/s0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/InvalidationTracker$b;

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/room/s0;->b:Landroidx/room/InvalidationTracker;

    invoke-virtual {p1, p0}, Landroidx/room/InvalidationTracker;->z(Landroidx/room/InvalidationTracker$b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$b;->c(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
