.class public final synthetic Lg2/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/s$a;

.field public final synthetic b:Landroidx/media3/exoplayer/source/r$b;

.field public final synthetic c:Lg2/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/source/r$b;Lg2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/s;->a:Landroidx/media3/exoplayer/source/s$a;

    iput-object p2, p0, Lg2/s;->b:Landroidx/media3/exoplayer/source/r$b;

    iput-object p3, p0, Lg2/s;->c:Lg2/j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lg2/s;->a:Landroidx/media3/exoplayer/source/s$a;

    iget-object v1, p0, Lg2/s;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, p0, Lg2/s;->c:Lg2/j;

    check-cast p1, Landroidx/media3/exoplayer/source/s;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/source/s$a;->d(Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/source/r$b;Lg2/j;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method
