.class public final synthetic Ly1/v0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:Lg2/i;

.field public final synthetic c:Lg2/j;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;Lg2/i;Lg2/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/v0;->a:Ly1/c$a;

    iput-object p2, p0, Ly1/v0;->b:Lg2/i;

    iput-object p3, p0, Ly1/v0;->c:Lg2/j;

    iput p4, p0, Ly1/v0;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ly1/v0;->a:Ly1/c$a;

    iget-object v1, p0, Ly1/v0;->b:Lg2/i;

    iget-object v2, p0, Ly1/v0;->c:Lg2/j;

    iget v3, p0, Ly1/v0;->d:I

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, v2, v3, p1}, Ly1/s1;->U(Ly1/c$a;Lg2/i;Lg2/j;ILy1/c;)V

    return-void
.end method
