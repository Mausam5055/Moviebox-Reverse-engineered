.class public final Lcom/google/android/exoplayer2/offline/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/b0$a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/b0$a;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b0$a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d;->a:Lcom/google/android/exoplayer2/upstream/b0$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->a:Lcom/google/android/exoplayer2/upstream/b0$a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/b0$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/c;

    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/d;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/d;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/offline/c;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/c;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/d;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/c;

    move-result-object p1

    return-object p1
.end method
