.class public final synthetic Lcom/google/android/exoplayer2/source/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/w;

.field public final synthetic b:Lg9/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/w;Lg9/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v;->a:Lcom/google/android/exoplayer2/source/w;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v;->b:Lg9/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v;->a:Lcom/google/android/exoplayer2/source/w;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v;->b:Lg9/b0;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/w;->g(Lcom/google/android/exoplayer2/source/w;Lg9/b0;)V

    return-void
.end method
