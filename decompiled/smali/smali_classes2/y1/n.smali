.class public final synthetic Ly1/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/n;->a:Ly1/c$a;

    iput p2, p0, Ly1/n;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ly1/n;->a:Ly1/c$a;

    iget v1, p0, Ly1/n;->b:I

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, p1}, Ly1/s1;->p0(Ly1/c$a;ILy1/c;)V

    return-void
.end method
