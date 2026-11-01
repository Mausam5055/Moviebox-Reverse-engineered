.class public final synthetic Le9/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/p3;


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Lcom/google/android/exoplayer2/p3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/i0;->a:Le9/c$a;

    iput-object p2, p0, Le9/i0;->b:Lcom/google/android/exoplayer2/p3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le9/i0;->a:Le9/c$a;

    iget-object v1, p0, Le9/i0;->b:Lcom/google/android/exoplayer2/p3;

    check-cast p1, Le9/c;

    invoke-static {v0, v1, p1}, Le9/p1;->v0(Le9/c$a;Lcom/google/android/exoplayer2/p3;Le9/c;)V

    return-void
.end method
