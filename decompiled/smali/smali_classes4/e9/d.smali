.class public final synthetic Le9/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/d;->a:Le9/c$a;

    iput-object p2, p0, Le9/d;->b:Ljava/lang/String;

    iput-wide p3, p0, Le9/d;->c:J

    iput-wide p5, p0, Le9/d;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Le9/d;->a:Le9/c$a;

    iget-object v1, p0, Le9/d;->b:Ljava/lang/String;

    iget-wide v2, p0, Le9/d;->c:J

    iget-wide v4, p0, Le9/d;->d:J

    move-object v6, p1

    check-cast v6, Le9/c;

    invoke-static/range {v0 .. v6}, Le9/p1;->M0(Le9/c$a;Ljava/lang/String;JJLe9/c;)V

    return-void
.end method
