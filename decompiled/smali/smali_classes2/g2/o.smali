.class public final synthetic Lg2/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/s$a;

.field public final synthetic b:Lg2/i;

.field public final synthetic c:Lg2/j;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/o;->a:Landroidx/media3/exoplayer/source/s$a;

    iput-object p2, p0, Lg2/o;->b:Lg2/i;

    iput-object p3, p0, Lg2/o;->c:Lg2/j;

    iput-object p4, p0, Lg2/o;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lg2/o;->e:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lg2/o;->a:Landroidx/media3/exoplayer/source/s$a;

    iget-object v1, p0, Lg2/o;->b:Lg2/i;

    iget-object v2, p0, Lg2/o;->c:Lg2/j;

    iget-object v3, p0, Lg2/o;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Lg2/o;->e:Z

    move-object v5, p1

    check-cast v5, Landroidx/media3/exoplayer/source/s;

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/source/s$a;->b(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/s;)V

    return-void
.end method
