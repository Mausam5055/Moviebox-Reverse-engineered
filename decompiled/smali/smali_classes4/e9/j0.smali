.class public final synthetic Le9/j0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Le9/c$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/j0;->a:Le9/c$a;

    iput p2, p0, Le9/j0;->b:I

    iput-wide p3, p0, Le9/j0;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Le9/j0;->a:Le9/c$a;

    iget v1, p0, Le9/j0;->b:I

    iget-wide v2, p0, Le9/j0;->c:J

    check-cast p1, Le9/c;

    invoke-static {v0, v1, v2, v3, p1}, Le9/p1;->s0(Le9/c$a;IJLe9/c;)V

    return-void
.end method
