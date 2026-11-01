.class public final Lcom/transsion/shorttv_pugc/ui/adapter/o;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;

# interfaces
.implements Lr6/i;
.implements Lr6/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lr6/i;",
        "Lr6/l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\r\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u00112\u000e\u0010\r\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/adapter/o;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "Lr6/l;",
        "<init>",
        "()V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "baseQuickAdapter",
        "Lr6/f;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;",
        "Lr6/g;",
        "f",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/g;",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_item_episode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "item"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Let/b;->a:Let/b$a;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v1, Lcom/transsion/shorttv/R$id;->iv_cover:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    move-result-object v1

    const-string v6, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v6

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v10, v7

    goto :goto_1

    :cond_3
    :goto_0
    move-object v10, v6

    :goto_1
    const/16 v17, 0x1fb8

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v6, v1

    invoke-static/range {v3 .. v18}, Let/b$a;->m(Let/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    sget v1, Lcom/transsion/shorttv/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEpTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/shorttv/R$id;->tv_duration:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDuration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->p(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v4

    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/shorttv/R$id;->tv_language:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object v3, v4

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " views"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, "\ufffc"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->f(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    move-result-object v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v1, v3, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v3, Lcom/transsion/shorttv/R$id;->tv_info:I

    invoke-virtual {v0, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/shorttv/R$id;->v_corner:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    move v3, v6

    :goto_7
    xor-int/2addr v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/shorttv/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_start:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_center:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_end:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->setGradientColors(III)V

    goto :goto_8

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->setGradientColors(III)V

    :goto_8
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/o;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    return-void
.end method

.method public b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
            ")",
            "Lr6/f;"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr6/f;

    invoke-direct {v0, p1}, Lr6/f;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    return-object v0
.end method

.method public f(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
            ")",
            "Lr6/g;"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr6/g;

    invoke-direct {v0, p1}, Lr6/g;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    return-object v0
.end method
