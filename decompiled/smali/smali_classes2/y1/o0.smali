.class public final synthetic Ly1/o0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/o0;->a:Ly1/c$a;

    iput-wide p2, p0, Ly1/o0;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ly1/o0;->a:Ly1/c$a;

    iget-wide v1, p0, Ly1/o0;->b:J

    check-cast p1, Ly1/c;

    invoke-static {v0, v1, v2, p1}, Ly1/s1;->d0(Ly1/c$a;JLy1/c;)V

    return-void
.end method
