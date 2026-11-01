.class public final Lcom/transsion/home/tv/adapter/l;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/home/tv/adapter/l;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/tv/bean/CountryItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "<init>",
        "()V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/tv/bean/CountryItem;)V",
        "",
        "F",
        "Ljava/lang/String;",
        "C1",
        "()Ljava/lang/String;",
        "D1",
        "(Ljava/lang/String;)V",
        "selectedCountryCode",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final G:I = 0x8


# instance fields
.field private F:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/home/R$layout;->item_tv_country:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/tv/bean/CountryItem;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/home/tv/adapter/l;->F:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sget v2, Lcom/transsion/home/R$id;->tvCountryName:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/noober/background/view/BLTextView;

    invoke-virtual {p2}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    sget v2, Lcom/transsion/home/R$id;->ivSelected:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/home/R$id;->ivFlag:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryFlagImage()Lcom/transsion/home/tv/bean/ImageInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/home/tv/bean/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, p2

    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lcom/transsion/home/R$drawable;->ic_tv_country_flag_default:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_5

    :cond_6
    sget-object p2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, v4}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    sget v0, Lcom/transsion/home/R$drawable;->ic_tv_country_flag_default:I

    invoke-virtual {p2, v0}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :goto_5
    return-void
.end method

.method public final C1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/adapter/l;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final D1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/adapter/l;->F:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/tv/bean/CountryItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/tv/adapter/l;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/tv/bean/CountryItem;)V

    return-void
.end method
