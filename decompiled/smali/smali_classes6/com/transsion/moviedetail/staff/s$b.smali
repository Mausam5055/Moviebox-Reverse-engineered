.class final Lcom/transsion/moviedetail/staff/s$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/staff/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lhn/a;

    if-eqz v0, :cond_1

    check-cast p2, Lhn/a;

    invoke-virtual {p2}, Lhn/a;->a()I

    move-result v0

    invoke-virtual {p2}, Lhn/a;->c()I

    move-result p2

    if-lt v0, p2, :cond_0

    sget p2, Lcom/transsion/moviedetail/R$id;->tv_load:I

    sget v0, Lcom/transsion/moviedetail/R$string;->movie_staff_show_less:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget p2, Lcom/transsion/moviedetail/R$id;->iv_arrow:I

    sget v0, Lcom/transsion/moviedetail/R$mipmap;->movie_arrow_up:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/moviedetail/R$id;->tv_load:I

    sget v0, Lcom/transsion/moviedetail/R$string;->movie_staff_show_more:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget p2, Lcom/transsion/moviedetail/R$id;->iv_arrow:I

    sget v0, Lcom/transsion/moviedetail/R$mipmap;->movie_arrow_down:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_1
    :goto_0
    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_staff_item_more:I

    return v0
.end method
