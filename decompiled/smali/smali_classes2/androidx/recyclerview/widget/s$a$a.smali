.class Landroidx/recyclerview/widget/s$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/collection/x;

.field final synthetic b:Landroidx/recyclerview/widget/s$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/s$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/s$a$a;->b:Landroidx/recyclerview/widget/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/collection/x;

    invoke-direct {p1}, Landroidx/collection/x;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/s$a$a;->a:Landroidx/collection/x;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/s$a$a;->a:Landroidx/collection/x;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/s$a$a;->b:Landroidx/recyclerview/widget/s$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/s$a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/s$a$a;->a:Landroidx/collection/x;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method
