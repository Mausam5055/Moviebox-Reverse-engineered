.class final Landroidx/media3/exoplayer/b2$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/c3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroidx/media3/exoplayer/source/r;

.field private c:Landroidx/media3/common/e0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$e;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/b2$e;->b:Landroidx/media3/exoplayer/source/r;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/p;->W()Landroidx/media3/common/e0;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$e;->c:Landroidx/media3/common/e0;

    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/b2$e;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2$e;->b:Landroidx/media3/exoplayer/source/r;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Landroidx/media3/common/e0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$e;->c:Landroidx/media3/common/e0;

    return-object v0
.end method

.method public d(Landroidx/media3/common/e0;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$e;->c:Landroidx/media3/common/e0;

    return-void
.end method
