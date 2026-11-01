.class public final synthetic Le9/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Le9/c$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/o0;->a:Le9/c$a;

    iput-wide p2, p0, Le9/o0;->b:J

    iput p4, p0, Le9/o0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Le9/o0;->a:Le9/c$a;

    iget-wide v1, p0, Le9/o0;->b:J

    iget v3, p0, Le9/o0;->c:I

    check-cast p1, Le9/c;

    invoke-static {v0, v1, v2, v3, p1}, Le9/p1;->I(Le9/c$a;JILe9/c;)V

    return-void
.end method
