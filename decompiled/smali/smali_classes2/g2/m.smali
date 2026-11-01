.class public final synthetic Lg2/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/s$a;

.field public final synthetic b:Lg2/i;

.field public final synthetic c:Lg2/j;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/m;->a:Landroidx/media3/exoplayer/source/s$a;

    iput-object p2, p0, Lg2/m;->b:Lg2/i;

    iput-object p3, p0, Lg2/m;->c:Lg2/j;

    iput p4, p0, Lg2/m;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lg2/m;->a:Landroidx/media3/exoplayer/source/s$a;

    iget-object v1, p0, Lg2/m;->b:Lg2/i;

    iget-object v2, p0, Lg2/m;->c:Lg2/j;

    iget v3, p0, Lg2/m;->d:I

    check-cast p1, Landroidx/media3/exoplayer/source/s;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/exoplayer/source/s$a;->c(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;ILandroidx/media3/exoplayer/source/s;)V

    return-void
.end method
