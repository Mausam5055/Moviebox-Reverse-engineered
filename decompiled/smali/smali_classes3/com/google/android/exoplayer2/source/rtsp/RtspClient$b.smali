.class final Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->h(Ljava/util/List;)V

    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->d(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->g(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->f(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->j(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/b0;->c:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v1, "CSeq"

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->d(I)V

    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->k(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/c0;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v1, "CSeq"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/b0;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    iget v0, v1, Lcom/google/android/exoplayer2/source/rtsp/b0;->b:I

    :try_start_0
    iget v1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq v1, v2, :cond_9

    const/16 v2, 0x191

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    move-result-object p1

    const-string v0, "Redirection without new location."

    invoke-interface {p1, v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->o(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->m(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/y$a;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->U(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v0, "WWW-Authenticate"

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/o;->e(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/y;->n(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->c0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/l;)Lcom/google/android/exoplayer2/source/rtsp/l;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    return-void

    :cond_7
    const-string p1, "Missing WWW-Authenticate header in a 401 response."

    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/y;->s(I)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v1, "Session"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v2, "Transport"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/y;->l(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/y$b;

    move-result-object v0

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/e0;

    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/e0;-><init>(ILcom/google/android/exoplayer2/source/rtsp/y$b;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->m(Lcom/google/android/exoplayer2/source/rtsp/e0;)V

    goto/16 :goto_8

    :cond_a
    const-string p1, "Missing mandatory session or transport header"

    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v1, "Range"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/d0;->c:Lcom/google/android/exoplayer2/source/rtsp/d0;

    goto :goto_5

    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/d0;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/d0;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    :try_start_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v2, "RTP-Info"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/f0;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    :try_start_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_6
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/a0;

    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/a0;-><init>(ILcom/google/android/exoplayer2/source/rtsp/d0;Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->l(Lcom/google/android/exoplayer2/source/rtsp/a0;)V

    goto :goto_8

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->k()V

    goto :goto_8

    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/z;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v2, "Public"

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->i(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/z;-><init>(ILjava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->j(Lcom/google/android/exoplayer2/source/rtsp/z;)V

    goto :goto_8

    :pswitch_4
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/n;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/h0;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/n;-><init>(ILcom/google/android/exoplayer2/source/rtsp/g0;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->i(Lcom/google/android/exoplayer2/source/rtsp/n;)V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :goto_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V

    :goto_8
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic h(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->e(Ljava/util/List;)V

    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/source/rtsp/n;)V
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/d0;->c:Lcom/google/android/exoplayer2/source/rtsp/d0;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/n;->b:Lcom/google/android/exoplayer2/source/rtsp/g0;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/g0;->a:Lcom/google/common/collect/ImmutableMap;

    const-string v2, "range"

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/d0;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/d0;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    move-result-object v0

    const-string v1, "SDP format error."

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/n;->b:Lcom/google/android/exoplayer2/source/rtsp/g0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    move-result-object p1

    const-string v0, "No playable track."

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->g(Lcom/google/android/exoplayer2/source/rtsp/d0;Lcom/google/common/collect/ImmutableList;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->t(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/source/rtsp/z;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->U(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    move-result-object p1

    const-string v0, "DESCRIBE not supported."

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->x(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->v(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->v(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->E0(J)V

    :cond_1
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/source/rtsp/a0;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    const-wide/16 v2, 0x7530

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;J)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;->start()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->w(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;J)J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->T(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/a0;->b:Lcom/google/android/exoplayer2/source/rtsp/d0;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d0;->a:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/a0;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->f(JLcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/source/rtsp/e0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/e0;->b:Lcom/google/android/exoplayer2/source/rtsp/y$b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/y$b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->V(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->u(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/v;->a(Lcom/google/android/exoplayer2/source/rtsp/u$d;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/v;->b(Lcom/google/android/exoplayer2/source/rtsp/u$d;Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/m;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
