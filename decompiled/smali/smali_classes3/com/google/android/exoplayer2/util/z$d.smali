.class final Lcom/google/android/exoplayer2/util/z$d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/util/z;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/z$d;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/z;Lcom/google/android/exoplayer2/util/z$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/z$d;-><init>(Lcom/google/android/exoplayer2/util/z;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z;->b(Landroid/content/Context;)I

    move-result p2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/util/z$d;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/z$b;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/util/z;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/z$d;->a:Lcom/google/android/exoplayer2/util/z;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/z;->c(Lcom/google/android/exoplayer2/util/z;I)V

    :goto_0
    return-void
.end method
