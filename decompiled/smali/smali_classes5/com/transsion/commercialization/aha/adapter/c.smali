.class public final Lcom/transsion/commercialization/aha/adapter/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    sget-object v0, Lcom/transsion/bean/GameLayoutType;->ITEM_TITLE:Lcom/transsion/bean/GameLayoutType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/transsion/commercialization/aha/adapter/c;->e:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/bean/AhaGameAllGames;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/adapter/c;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/bean/AhaGameAllGames;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/commercialization/aha/adapter/c;->e:I

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/commercialization/R$layout;->item_aha_game_title:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/bean/AhaGameAllGames;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/commercialization/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/bean/AhaGameAllGames;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method
