.class public final synthetic Lt9/f;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/r;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/o1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/f;->b:Lcom/google/android/exoplayer2/o1;

    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/net/Uri;Ljava/util/Map;)[Lg9/l;
    .locals 0

    invoke-static {p0, p1, p2}, Lg9/q;->a(Lg9/r;Landroid/net/Uri;Ljava/util/Map;)[Lg9/l;

    move-result-object p1

    return-object p1
.end method

.method public final createExtractors()[Lg9/l;
    .locals 1

    iget-object v0, p0, Lt9/f;->b:Lcom/google/android/exoplayer2/o1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/i;->d(Lcom/google/android/exoplayer2/o1;)[Lg9/l;

    move-result-object v0

    return-object v0
.end method
