.class public final synthetic Le9/e1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/e1;->a:Le9/c$a;

    iput-object p2, p0, Le9/e1;->b:Ljava/lang/Object;

    iput-wide p3, p0, Le9/e1;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Le9/e1;->a:Le9/c$a;

    iget-object v1, p0, Le9/e1;->b:Ljava/lang/Object;

    iget-wide v2, p0, Le9/e1;->c:J

    check-cast p1, Le9/c;

    invoke-static {v0, v1, v2, v3, p1}, Le9/p1;->r0(Le9/c$a;Ljava/lang/Object;JLe9/c;)V

    return-void
.end method
