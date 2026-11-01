.class public final Lcom/transsion/audio/adapter/c;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/adapter/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u001fB\u0015\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ-\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00022\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\u0015\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R$\u0010\u001e\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u0018\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/audio/adapter/c;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/baselib/db/audio/AudioBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "",
        "dataList",
        "<init>",
        "(Ljava/util/List;)V",
        "holder",
        "item",
        "",
        "K1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V",
        "G1",
        "",
        "",
        "payloads",
        "E1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/util/List;)V",
        "D1",
        "Lcom/transsion/audio/adapter/c$a;",
        "listener",
        "I1",
        "(Lcom/transsion/audio/adapter/c$a;)V",
        "F",
        "Lcom/transsion/audio/adapter/c$a;",
        "F1",
        "()Lcom/transsion/audio/adapter/c$a;",
        "J1",
        "optionClickListener",
        "a",
        "Audio_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private F:Lcom/transsion/audio/adapter/c$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/audio/AudioBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/audio/R$layout;->adapter_item_bottom_dialog:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/baselib/db/audio/AudioBean;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/c;->H1(Lcom/transsion/baselib/db/audio/AudioBean;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C1(Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/adapter/c;->L1(Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;Landroid/view/View;)V

    return-void
.end method

.method private final G1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 10

    sget v0, Lcom/transsion/audio/R$id;->tv_process:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v6, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    cmp-long v1, v8, v2

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v6, v8

    :goto_2
    long-to-float v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    long-to-float v2, v6

    div-float/2addr v1, v2

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v1, :cond_3

    const/16 v2, 0x65

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->listened:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget v2, Lcom/transsion/audio/R$id;->pb_subject:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    sget v3, Lcom/transsion/audio/R$id;->iv_subject:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "getString(...)"

    if-eq v5, v6, :cond_7

    const/4 v6, 0x6

    if-eq v5, v6, :cond_6

    const/4 v6, 0x7

    if-eq v5, v6, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    sget v0, Lcom/transsion/audio/R$drawable;->playing_progress_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_4
    sget v0, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/transsion/audio/R$string;->error:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/transsion/audio/R$string;->finished:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/transsion/audio/R$string;->not_open:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    new-instance v0, Lcom/transsion/audio/adapter/b;

    invoke-direct {v0, p2, p1, p0}, Lcom/transsion/audio/adapter/b;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final H1(Lcom/transsion/baselib/db/audio/AudioBean;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/c;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    sget p3, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/audio/R$drawable;->playing_progress_bg:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p2, Lcom/transsion/audio/adapter/c;->F:Lcom/transsion/audio/adapter/c$a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/transsion/audio/adapter/c$a;->b(Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_1
    return-void
.end method

.method private final K1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget v1, Lcom/transsion/audio/R$id;->tv_name:I

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/audio/R$id;->tv_size:I

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/audio/R$id;->iv_del:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/audio/adapter/a;

    invoke-direct {v0, p0, p2}, Lcom/transsion/audio/adapter/a;-><init>(Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final L1(Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/c;->F:Lcom/transsion/audio/adapter/c$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/audio/adapter/c$a;->a(Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/adapter/c;->K1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/adapter/c;->G1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V

    return-void
.end method

.method protected E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/transsion/baselib/db/audio/AudioBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/adapter/c;->G1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/c;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;)V

    return-void
.end method

.method public final F1()Lcom/transsion/audio/adapter/c$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/adapter/c;->F:Lcom/transsion/audio/adapter/c$a;

    return-object v0
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/c;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/util/List;)V

    return-void
.end method

.method public final I1(Lcom/transsion/audio/adapter/c$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audio/adapter/c;->F:Lcom/transsion/audio/adapter/c$a;

    return-void
.end method

.method public final J1(Lcom/transsion/audio/adapter/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/c;->F:Lcom/transsion/audio/adapter/c$a;

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method
