.class public final synthetic Lcom/google/android/exoplayer2/upstream/cache/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/h;

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/q;->f(Lcom/google/android/exoplayer2/upstream/cache/h;Lcom/google/android/exoplayer2/upstream/cache/h;)I

    move-result p1

    return p1
.end method
