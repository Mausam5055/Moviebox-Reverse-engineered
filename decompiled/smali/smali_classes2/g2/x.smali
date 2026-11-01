.class public final Lg2/x;
.super Landroidx/media3/exoplayer/source/m;


# instance fields
.field private final f:Landroidx/media3/common/t;


# direct methods
.method public constructor <init>(Landroidx/media3/common/e0;Landroidx/media3/common/t;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/m;-><init>(Landroidx/media3/common/e0;)V

    iput-object p2, p0, Lg2/x;->f:Landroidx/media3/common/t;

    return-void
.end method


# virtual methods
.method public o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/m;->o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;

    iget-object p1, p0, Lg2/x;->f:Landroidx/media3/common/t;

    iput-object p1, p2, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/media3/common/t$h;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p2, Landroidx/media3/common/e0$c;->b:Ljava/lang/Object;

    return-object p2
.end method
