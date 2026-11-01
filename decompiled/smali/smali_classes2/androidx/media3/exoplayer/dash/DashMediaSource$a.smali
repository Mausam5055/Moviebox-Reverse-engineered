.class Landroidx/media3/exoplayer/dash/DashMediaSource$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/util/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$a;->a:Landroidx/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$a;->a:Landroidx/media3/exoplayer/dash/DashMediaSource;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->F(Landroidx/media3/exoplayer/dash/DashMediaSource;Ljava/io/IOException;)V

    return-void
.end method

.method public onInitialized()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$a;->a:Landroidx/media3/exoplayer/dash/DashMediaSource;

    invoke-static {}, Landroidx/media3/exoplayer/util/d;->i()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/dash/DashMediaSource;->E(Landroidx/media3/exoplayer/dash/DashMediaSource;J)V

    return-void
.end method
