.class public final synthetic Ly1/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$b;


# instance fields
.field public final synthetic a:Ly1/s1;

.field public final synthetic b:Landroidx/media3/common/a0;


# direct methods
.method public synthetic constructor <init>(Ly1/s1;Landroidx/media3/common/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/i;->a:Ly1/s1;

    iput-object p2, p0, Ly1/i;->b:Landroidx/media3/common/a0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/media3/common/p;)V
    .locals 2

    iget-object v0, p0, Ly1/i;->a:Ly1/s1;

    iget-object v1, p0, Ly1/i;->b:Landroidx/media3/common/a0;

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, p1, p2}, Ly1/s1;->f0(Ly1/s1;Landroidx/media3/common/a0;Ly1/c;Landroidx/media3/common/p;)V

    return-void
.end method
