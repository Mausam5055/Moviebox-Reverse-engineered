.class public final Landroidx/media3/exoplayer/source/h0$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/a$a;

.field private b:Landroidx/media3/exoplayer/upstream/m;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/common/base/q;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/a$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/h0$b;->a:Landroidx/media3/datasource/a$a;

    new-instance p1, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/h0$b;->b:Landroidx/media3/exoplayer/upstream/m;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/h0$b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/t$k;J)Landroidx/media3/exoplayer/source/h0;
    .locals 12

    new-instance v11, Landroidx/media3/exoplayer/source/h0;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/h0$b;->e:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/h0$b;->a:Landroidx/media3/datasource/a$a;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/h0$b;->b:Landroidx/media3/exoplayer/upstream/m;

    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/h0$b;->c:Z

    iget-object v8, p0, Landroidx/media3/exoplayer/source/h0$b;->d:Ljava/lang/Object;

    iget-object v9, p0, Landroidx/media3/exoplayer/source/h0$b;->f:Lcom/google/common/base/q;

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/source/h0;-><init>(Ljava/lang/String;Landroidx/media3/common/t$k;Landroidx/media3/datasource/a$a;JLandroidx/media3/exoplayer/upstream/m;ZLjava/lang/Object;Lcom/google/common/base/q;Landroidx/media3/exoplayer/source/h0$a;)V

    return-object v11
.end method

.method public b(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/h0$b;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/h0$b;->b:Landroidx/media3/exoplayer/upstream/m;

    return-object p0
.end method
