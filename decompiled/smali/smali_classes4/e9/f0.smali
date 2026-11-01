.class public final synthetic Le9/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Le9/c$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/f0;->a:Le9/c$a;

    iput-wide p2, p0, Le9/f0;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Le9/f0;->a:Le9/c$a;

    iget-wide v1, p0, Le9/f0;->b:J

    check-cast p1, Le9/c;

    invoke-static {v0, v1, v2, p1}, Le9/p1;->k0(Le9/c$a;JLe9/c;)V

    return-void
.end method
