.class public final synthetic Ly1/e0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/e0;->a:Ly1/c$a;

    iput-object p2, p0, Ly1/e0;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ly1/e0;->a:Ly1/c$a;

    iget-object v1, p0, Ly1/e0;->b:Ljava/lang/Exception;

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, p1}, Ly1/s1;->C0(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V

    return-void
.end method
