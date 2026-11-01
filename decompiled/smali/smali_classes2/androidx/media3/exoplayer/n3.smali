.class public final synthetic Landroidx/media3/exoplayer/n3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/q3$a;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:Lg2/i;

.field public final synthetic d:Lg2/j;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;Lg2/i;Lg2/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/n3;->a:Landroidx/media3/exoplayer/q3$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/n3;->b:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/n3;->c:Lg2/i;

    iput-object p4, p0, Landroidx/media3/exoplayer/n3;->d:Lg2/j;

    iput p5, p0, Landroidx/media3/exoplayer/n3;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/n3;->a:Landroidx/media3/exoplayer/q3$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/n3;->b:Landroid/util/Pair;

    iget-object v2, p0, Landroidx/media3/exoplayer/n3;->c:Lg2/i;

    iget-object v3, p0, Landroidx/media3/exoplayer/n3;->d:Lg2/j;

    iget v4, p0, Landroidx/media3/exoplayer/n3;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/q3$a;->T(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;Lg2/i;Lg2/j;I)V

    return-void
.end method
