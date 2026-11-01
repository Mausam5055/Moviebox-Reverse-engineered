.class Lcom/google/android/exoplayer2/l1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/x2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/l1;->o(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/l1;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/l1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1$a;->a:Lcom/google/android/exoplayer2/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1$a;->a:Lcom/google/android/exoplayer2/l1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/l1;->f(Lcom/google/android/exoplayer2/l1;Z)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1$a;->a:Lcom/google/android/exoplayer2/l1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/l1;->i(Lcom/google/android/exoplayer2/l1;)Lcom/google/android/exoplayer2/util/o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    return-void
.end method
