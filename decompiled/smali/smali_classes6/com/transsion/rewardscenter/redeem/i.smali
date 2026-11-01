.class public final Lcom/transsion/rewardscenter/redeem/i;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/redeem/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/i;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/rewardscenter/R$layout;->redeem_title_item:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/transsion/rewardscenter/redeem/e$c;

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/rewardscenter/R$id;->tv_title:I

    check-cast p2, Lcom/transsion/rewardscenter/redeem/e$c;

    invoke-virtual {p2}, Lcom/transsion/rewardscenter/redeem/e$c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_0
    return-void
.end method
