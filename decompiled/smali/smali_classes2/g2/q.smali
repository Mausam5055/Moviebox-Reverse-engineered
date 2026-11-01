.class public final synthetic Lg2/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/m;

.field public final synthetic b:Landroidx/media3/exoplayer/source/s;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/q;->a:Landroidx/media3/common/util/m;

    iput-object p2, p0, Lg2/q;->b:Landroidx/media3/exoplayer/source/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg2/q;->a:Landroidx/media3/common/util/m;

    iget-object v1, p0, Lg2/q;->b:Landroidx/media3/exoplayer/source/s;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/s$a;->a(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method
