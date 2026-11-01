.class public final synthetic Lt9/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/p$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/p;

.field public final synthetic c:Lt9/h;

.field public final synthetic d:Lt9/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/l;->a:Lcom/google/android/exoplayer2/source/p$a;

    iput-object p2, p0, Lt9/l;->b:Lcom/google/android/exoplayer2/source/p;

    iput-object p3, p0, Lt9/l;->c:Lt9/h;

    iput-object p4, p0, Lt9/l;->d:Lt9/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lt9/l;->a:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p0, Lt9/l;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v2, p0, Lt9/l;->c:Lt9/h;

    iget-object v3, p0, Lt9/l;->d:Lt9/i;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/p$a;->f(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V

    return-void
.end method
