.class public final Lcom/transsion/publish/adapter/SelectLocationAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\n\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/publish/adapter/SelectLocationAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/room/api/bean/LocationPlace;",
        "Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;",
        "<init>",
        "()V",
        "",
        "lat",
        "lon",
        "",
        "D1",
        "(Ljava/lang/Double;Ljava/lang/Double;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "C1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;",
        "holder",
        "item",
        "B1",
        "(Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;Lcom/transsion/room/api/bean/LocationPlace;)V",
        "F",
        "Ljava/lang/Double;",
        "curLat",
        "G",
        "curLon",
        "SelectLocationItemVH",
        "Publish_psRelease"
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
.field private F:Ljava/lang/Double;

.field private G:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/publish/R$layout;->item_select_location:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;Lcom/transsion/room/api/bean/LocationPlace;)V
    .locals 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;->f()Lhp/j;

    move-result-object v0

    iget-object v0, v0, Lhp/j;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmpl-double v0, v3, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_1

    :cond_2
    move-wide v3, v1

    :goto_1
    cmpl-double v0, v3, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lak/s;->a:Lak/s;

    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lak/s;->a(DDDD)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u00b7"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;->f()Lhp/j;

    move-result-object p1

    iget-object p1, p1, Lhp/j;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected C1(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lhp/j;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhp/j;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;-><init>(Lhp/j;)V

    return-object p2
.end method

.method public final D1(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    iput-object p2, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;

    check-cast p2, Lcom/transsion/room/api/bean/LocationPlace;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/SelectLocationAdapter;->B1(Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;Lcom/transsion/room/api/bean/LocationPlace;)V

    return-void
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/SelectLocationAdapter;->C1(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;

    move-result-object p1

    return-object p1
.end method
