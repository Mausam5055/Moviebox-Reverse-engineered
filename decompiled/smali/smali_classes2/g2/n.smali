.class public final synthetic Lg2/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/s$a;

.field public final synthetic b:Lg2/i;

.field public final synthetic c:Lg2/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/n;->a:Landroidx/media3/exoplayer/source/s$a;

    iput-object p2, p0, Lg2/n;->b:Lg2/i;

    iput-object p3, p0, Lg2/n;->c:Lg2/j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lg2/n;->a:Landroidx/media3/exoplayer/source/s$a;

    iget-object v1, p0, Lg2/n;->b:Lg2/i;

    iget-object v2, p0, Lg2/n;->c:Lg2/j;

    check-cast p1, Landroidx/media3/exoplayer/source/s;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/source/s$a;->f(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method
