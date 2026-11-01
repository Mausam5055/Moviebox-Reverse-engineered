.class final Landroidx/media3/exoplayer/q3$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/c3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/p;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/r;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/source/p;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/source/p;-><init>(Landroidx/media3/exoplayer/source/r;Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/q3$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Landroidx/media3/common/e0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/p;->W()Landroidx/media3/common/e0;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/q3$c;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/q3$c;->e:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
