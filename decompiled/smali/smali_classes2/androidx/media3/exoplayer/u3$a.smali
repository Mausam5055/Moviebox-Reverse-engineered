.class Landroidx/media3/exoplayer/u3$a;
.super Landroidx/media3/exoplayer/source/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/u3;->E(Lg2/v;)Landroidx/media3/exoplayer/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final f:Landroidx/media3/common/e0$c;

.field final synthetic g:Landroidx/media3/exoplayer/u3;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/u3;Landroidx/media3/common/e0;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/u3$a;->g:Landroidx/media3/exoplayer/u3;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/m;-><init>(Landroidx/media3/common/e0;)V

    new-instance p1, Landroidx/media3/common/e0$c;

    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/u3$a;->f:Landroidx/media3/common/e0$c;

    return-void
.end method


# virtual methods
.method public g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/m;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    move-result-object p1

    iget p3, p1, Landroidx/media3/common/e0$b;->c:I

    iget-object v0, p0, Landroidx/media3/exoplayer/u3$a;->f:Landroidx/media3/common/e0$c;

    invoke-super {p0, p3, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/common/e0$c;->f()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object v1, p2, Landroidx/media3/common/e0$b;->a:Ljava/lang/Object;

    iget-object v2, p2, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    iget v3, p2, Landroidx/media3/common/e0$b;->c:I

    iget-wide v4, p2, Landroidx/media3/common/e0$b;->d:J

    iget-wide v6, p2, Landroidx/media3/common/e0$b;->e:J

    sget-object v8, Landroidx/media3/common/b;->g:Landroidx/media3/common/b;

    const/4 v9, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/e0$b;->u(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/b;Z)Landroidx/media3/common/e0$b;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/media3/common/e0$b;->f:Z

    :goto_0
    return-object p1
.end method
