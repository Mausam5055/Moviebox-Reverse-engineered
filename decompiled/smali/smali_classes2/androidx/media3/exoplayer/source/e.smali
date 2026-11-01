.class public final synthetic Landroidx/media3/exoplayer/source/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Landroidx/media3/datasource/a$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e;->b:Landroidx/media3/datasource/a$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e;->a:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/e;->b:Landroidx/media3/datasource/a$a;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/i$a;->e(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object v0

    return-object v0
.end method
