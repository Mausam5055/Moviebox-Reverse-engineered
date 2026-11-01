.class public final synthetic Landroidx/media3/exoplayer/offline/i;
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

    check-cast p1, Landroidx/media3/exoplayer/offline/c;

    check-cast p2, Landroidx/media3/exoplayer/offline/c;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->a(Landroidx/media3/exoplayer/offline/c;Landroidx/media3/exoplayer/offline/c;)I

    move-result p1

    return p1
.end method
