.class public final synthetic Le9/b1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Le9/c$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/b1;->a:Le9/c$a;

    iput p2, p0, Le9/b1;->b:I

    iput-wide p3, p0, Le9/b1;->c:J

    iput-wide p5, p0, Le9/b1;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Le9/b1;->a:Le9/c$a;

    iget v1, p0, Le9/b1;->b:I

    iget-wide v2, p0, Le9/b1;->c:J

    iget-wide v4, p0, Le9/b1;->d:J

    move-object v6, p1

    check-cast v6, Le9/c;

    invoke-static/range {v0 .. v6}, Le9/p1;->Y(Le9/c$a;IJJLe9/c;)V

    return-void
.end method
