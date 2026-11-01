.class public final synthetic Ly1/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:Landroidx/media3/common/t;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;Landroidx/media3/common/t;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/e;->a:Ly1/c$a;

    iput-object p2, p0, Ly1/e;->b:Landroidx/media3/common/t;

    iput p3, p0, Ly1/e;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ly1/e;->a:Ly1/c$a;

    iget-object v1, p0, Ly1/e;->b:Landroidx/media3/common/t;

    iget v2, p0, Ly1/e;->c:I

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, v2, p1}, Ly1/s1;->Q0(Ly1/c$a;Landroidx/media3/common/t;ILy1/c;)V

    return-void
.end method
