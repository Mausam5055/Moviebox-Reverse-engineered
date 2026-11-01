.class public final synthetic Le9/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/v1;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Lcom/google/android/exoplayer2/v1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/s;->a:Le9/c$a;

    iput-object p2, p0, Le9/s;->b:Lcom/google/android/exoplayer2/v1;

    iput p3, p0, Le9/s;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Le9/s;->a:Le9/c$a;

    iget-object v1, p0, Le9/s;->b:Lcom/google/android/exoplayer2/v1;

    iget v2, p0, Le9/s;->c:I

    check-cast p1, Le9/c;

    invoke-static {v0, v1, v2, p1}, Le9/p1;->m0(Le9/c$a;Lcom/google/android/exoplayer2/v1;ILe9/c;)V

    return-void
.end method
