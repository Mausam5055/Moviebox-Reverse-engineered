.class public final synthetic Lcom/google/android/exoplayer2/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/f$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/f$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e;->a:Lcom/google/android/exoplayer2/f$a;

    iput p2, p0, Lcom/google/android/exoplayer2/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->a:Lcom/google/android/exoplayer2/f$a;

    iget v1, p0, Lcom/google/android/exoplayer2/e;->b:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f$a;->a(Lcom/google/android/exoplayer2/f$a;I)V

    return-void
.end method
