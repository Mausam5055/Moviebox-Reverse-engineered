.class public final synthetic Landroidx/media3/exoplayer/source/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/i$a;

.field public final synthetic b:Landroidx/media3/datasource/a$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/i$a;Landroidx/media3/datasource/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/h;->a:Landroidx/media3/exoplayer/source/i$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/h;->b:Landroidx/media3/datasource/a$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/h;->a:Landroidx/media3/exoplayer/source/i$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/h;->b:Landroidx/media3/datasource/a$a;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/i$a;->c(Landroidx/media3/exoplayer/source/i$a;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object v0

    return-object v0
.end method
