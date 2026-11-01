.class public final synthetic Landroidx/media3/exoplayer/x0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/x0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/x0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->f(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/e;

    move-result-object v0

    return-object v0
.end method
