.class public final synthetic Ly1/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Ly1/c$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Ly1/c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/m;->a:Ly1/c$a;

    iput-object p2, p0, Ly1/m;->b:Ljava/lang/String;

    iput-wide p3, p0, Ly1/m;->c:J

    iput-wide p5, p0, Ly1/m;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Ly1/m;->a:Ly1/c$a;

    iget-object v1, p0, Ly1/m;->b:Ljava/lang/String;

    iget-wide v2, p0, Ly1/m;->c:J

    iget-wide v4, p0, Ly1/m;->d:J

    move-object v6, p1

    check-cast v6, Ly1/c;

    invoke-static/range {v0 .. v6}, Ly1/s1;->N(Ly1/c$a;Ljava/lang/String;JJLy1/c;)V

    return-void
.end method
