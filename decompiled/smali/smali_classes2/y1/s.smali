.class public final synthetic Ly1/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/s;->a:Ly1/c$a;

    iput p2, p0, Ly1/s;->b:I

    iput p3, p0, Ly1/s;->c:I

    iput-boolean p4, p0, Ly1/s;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ly1/s;->a:Ly1/c$a;

    iget v1, p0, Ly1/s;->b:I

    iget v2, p0, Ly1/s;->c:I

    iget-boolean v3, p0, Ly1/s;->d:Z

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, v2, v3, p1}, Ly1/s1;->Q(Ly1/c$a;IIZLy1/c;)V

    return-void
.end method
