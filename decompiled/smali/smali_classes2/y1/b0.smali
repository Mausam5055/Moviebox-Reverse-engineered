.class public final synthetic Ly1/b0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/common/a0$e;

.field public final synthetic d:Landroidx/media3/common/a0$e;


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/b0;->a:Ly1/c$a;

    iput p2, p0, Ly1/b0;->b:I

    iput-object p3, p0, Ly1/b0;->c:Landroidx/media3/common/a0$e;

    iput-object p4, p0, Ly1/b0;->d:Landroidx/media3/common/a0$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ly1/b0;->a:Ly1/c$a;

    iget v1, p0, Ly1/b0;->b:I

    iget-object v2, p0, Ly1/b0;->c:Landroidx/media3/common/a0$e;

    iget-object v3, p0, Ly1/b0;->d:Landroidx/media3/common/a0$e;

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, v2, v3, p1}, Ly1/s1;->t0(Ly1/c$a;ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;Ly1/c;)V

    return-void
.end method
