.class public final synthetic Landroidx/media3/exoplayer/j2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/j2;->a:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/j2;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/j2;->a:I

    iget-boolean v1, p0, Landroidx/media3/exoplayer/j2;->b:Z

    check-cast p1, Landroidx/media3/common/a0$d;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/b2$c;->y(IZLandroidx/media3/common/a0$d;)V

    return-void
.end method
