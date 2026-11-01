.class public final Lco/h$f;
.super Landroidx/media3/exoplayer/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/h;->U(Lcom/transsion/player/exo/ORExoDecoderType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lco/h;


# direct methods
.method constructor <init>(Lco/h;)V
    .locals 0

    iput-object p1, p0, Lco/h$f;->f:Lco/h;

    const-string p1, "ORExoPlayer"

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public I(Ly1/c$a;Lg2/i;Lg2/j;)V
    .locals 8

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEventInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaLoadData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/util/a;->I(Ly1/c$a;Lg2/i;Lg2/j;)V

    iget-object p1, p2, Lg2/i;->c:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object p2, p0, Lco/h$f;->f:Lco/h;

    iget v0, p3, Lg2/j;->a:I

    invoke-static {p2, v0}, Lco/h;->i(Lco/h;I)Ljava/lang/String;

    move-result-object p2

    iget v0, p3, Lg2/j;->a:I

    iget-object v1, p0, Lco/h$f;->f:Lco/h;

    iget v2, p3, Lg2/j;->b:I

    invoke-static {v1, v2}, Lco/h;->M(Lco/h;I)Ljava/lang/String;

    move-result-object v1

    iget v2, p3, Lg2/j;->b:I

    iget-wide v3, p3, Lg2/j;->f:J

    iget-wide v5, p3, Lg2/j;->g:J

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exo-load-start uri="

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dataType="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), trackType="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), mediaRange=["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public R(Ly1/c$a;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoderName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/util/a;->R(Ly1/c$a;Ljava/lang/String;JJ)V

    sget-object p1, Loo/e;->a:Loo/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onExoAudioDecoderInitialize, decoderName:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const-string p4, "ORExoPlayer"

    invoke-virtual {p1, p4, p2, p3}, Loo/e;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public q(Ly1/c$a;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoderName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/util/a;->q(Ly1/c$a;Ljava/lang/String;JJ)V

    sget-object p1, Loo/e;->a:Loo/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onExoVideoDecoderInitialize, decoderName:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const-string p4, "ORExoPlayer"

    invoke-virtual {p1, p4, p2, p3}, Loo/e;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public x0(Ly1/c$a;Lg2/i;Lg2/j;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "eventTime"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loadEventInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mediaLoadData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p3}, Landroidx/media3/exoplayer/util/a;->x0(Ly1/c$a;Lg2/i;Lg2/j;)V

    iget-object v3, v1, Lg2/i;->c:Landroid/net/Uri;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iget-wide v14, v1, Lg2/i;->g:J

    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    invoke-static {v4}, Lco/h;->t(Lco/h;)J

    move-result-wide v5

    add-long/2addr v5, v14

    invoke-static {v4, v5, v6}, Lco/h;->J(Lco/h;J)V

    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    iget v5, v2, Lg2/j;->a:I

    invoke-static {v4, v5}, Lco/h;->z(Lco/h;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    invoke-static {v4}, Lco/h;->u(Lco/h;)J

    move-result-wide v5

    add-long/2addr v5, v14

    invoke-static {v4, v5, v6}, Lco/h;->K(Lco/h;J)V

    :cond_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    iget v5, v2, Lg2/j;->a:I

    invoke-static {v4, v5}, Lco/h;->z(Lco/h;I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    iget v6, v2, Lg2/j;->a:I

    iget v7, v2, Lg2/j;->b:I

    iget-wide v8, v2, Lg2/j;->f:J

    iget-wide v10, v2, Lg2/j;->g:J

    iget-object v1, v1, Lg2/i;->b:Lw1/h;

    iget-wide v12, v1, Lw1/h;->g:J

    move-wide/from16 v16, v14

    iget-wide v14, v1, Lw1/h;->h:J

    move-object v5, v3

    move-wide/from16 v1, v16

    invoke-static/range {v4 .. v15}, Lco/h;->f(Lco/h;Ljava/lang/String;IIJJJJ)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    invoke-static {v4}, Lco/h;->v(Lco/h;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/h$c;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lco/h$c;->a()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    move-wide/from16 v20, v1

    move-object/from16 p1, v3

    move-object/from16 v1, p3

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    invoke-static {v4}, Lco/h;->v(Lco/h;)Ljava/util/LinkedHashMap;

    move-result-object v13

    new-instance v14, Lco/h$c;

    move-wide v11, v1

    move-object/from16 v1, p3

    iget v7, v1, Lg2/j;->a:I

    iget v8, v1, Lg2/j;->b:I

    iget-wide v9, v1, Lg2/j;->f:J

    iget-wide v5, v1, Lg2/j;->g:J

    move-object v4, v14

    move-wide/from16 v16, v5

    move-object v5, v15

    move-object v6, v3

    move-wide/from16 v18, v9

    move-wide v9, v11

    move-wide/from16 v20, v11

    move-wide/from16 v11, v18

    move-object/from16 p1, v3

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v13, v16

    invoke-direct/range {v4 .. v14}, Lco/h$c;-><init>(Ljava/lang/String;Ljava/lang/String;IIJJJ)V

    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v1, v2

    move-object/from16 p1, v3

    move-wide/from16 v20, v14

    :goto_2
    iget-object v2, v0, Lco/h$f;->f:Lco/h;

    iget v3, v1, Lg2/j;->a:I

    invoke-static {v2, v3}, Lco/h;->i(Lco/h;I)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lg2/j;->a:I

    iget-object v4, v0, Lco/h$f;->f:Lco/h;

    iget v5, v1, Lg2/j;->b:I

    invoke-static {v4, v5}, Lco/h;->M(Lco/h;I)Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lg2/j;->b:I

    iget-wide v6, v1, Lg2/j;->f:J

    iget-wide v8, v1, Lg2/j;->g:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exo-load-complete uri="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", bytes="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v20

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", dataType="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), trackType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), mediaRange=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public y(Ly1/c$a;Landroidx/media3/common/i0;)V
    .locals 1

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/util/a;->y(Ly1/c$a;Landroidx/media3/common/i0;)V

    iget-object v0, p0, Lco/h$f;->f:Lco/h;

    invoke-static {v0, p1, p2}, Lco/h;->D(Lco/h;Ly1/c$a;Landroidx/media3/common/i0;)V

    return-void
.end method
