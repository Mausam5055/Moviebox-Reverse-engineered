.class public final synthetic Landroidx/media3/exoplayer/h4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/k4;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/k4;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/h4;->a:Landroidx/media3/exoplayer/k4;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/h4;->b:Z

    iput p3, p0, Landroidx/media3/exoplayer/h4;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/h4;->a:Landroidx/media3/exoplayer/k4;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/h4;->b:Z

    iget v2, p0, Landroidx/media3/exoplayer/h4;->c:I

    check-cast p1, Landroidx/media3/exoplayer/k4$c;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/k4;->d(Landroidx/media3/exoplayer/k4;ZILandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    move-result-object p1

    return-object p1
.end method
