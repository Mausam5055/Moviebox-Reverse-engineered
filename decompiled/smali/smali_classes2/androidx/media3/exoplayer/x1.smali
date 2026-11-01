.class public final synthetic Landroidx/media3/exoplayer/x1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Landroidx/media3/common/t;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/t;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/x1;->a:Landroidx/media3/common/t;

    iput p2, p0, Landroidx/media3/exoplayer/x1;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/x1;->a:Landroidx/media3/common/t;

    iget v1, p0, Landroidx/media3/exoplayer/x1;->b:I

    check-cast p1, Landroidx/media3/common/a0$d;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/b2;->t0(Landroidx/media3/common/t;ILandroidx/media3/common/a0$d;)V

    return-void
.end method
