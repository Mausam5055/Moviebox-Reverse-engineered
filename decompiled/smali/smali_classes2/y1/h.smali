.class public final synthetic Ly1/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:Lg2/i;

.field public final synthetic c:Lg2/j;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/h;->a:Ly1/c$a;

    iput-object p2, p0, Ly1/h;->b:Lg2/i;

    iput-object p3, p0, Ly1/h;->c:Lg2/j;

    iput-object p4, p0, Ly1/h;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Ly1/h;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ly1/h;->a:Ly1/c$a;

    iget-object v1, p0, Ly1/h;->b:Lg2/i;

    iget-object v2, p0, Ly1/h;->c:Lg2/j;

    iget-object v3, p0, Ly1/h;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Ly1/h;->e:Z

    move-object v5, p1

    check-cast v5, Ly1/c;

    invoke-static/range {v0 .. v5}, Ly1/s1;->s0(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;ZLy1/c;)V

    return-void
.end method
