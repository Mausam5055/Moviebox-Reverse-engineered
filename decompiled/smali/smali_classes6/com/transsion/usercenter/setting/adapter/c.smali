.class public final Lcom/transsion/usercenter/setting/adapter/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/usercenter/setting/adapter/c;->e:I

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_locale_language_item:I

    iput v0, p0, Lcom/transsion/usercenter/setting/adapter/c;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lvw/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/adapter/c;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lvw/a;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/adapter/c;->e:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/adapter/c;->f:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lvw/a;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/usercenter/R$id;->tv_language:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lvw/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
