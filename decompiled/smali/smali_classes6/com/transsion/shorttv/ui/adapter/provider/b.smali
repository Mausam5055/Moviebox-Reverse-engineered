.class public final Lcom/transsion/shorttv/ui/adapter/provider/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lxs/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/provider/b;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lxs/a;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$layout;->layout_view_container:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lxs/a;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
