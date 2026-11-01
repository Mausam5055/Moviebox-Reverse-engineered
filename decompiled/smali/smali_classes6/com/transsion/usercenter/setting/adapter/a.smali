.class public final Lcom/transsion/usercenter/setting/adapter/a;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/usercenter/setting/adapter/a;->e:I

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_locale_language_item_auto:I

    iput v0, p0, Lcom/transsion/usercenter/setting/adapter/a;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lvw/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/adapter/a;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lvw/a;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/adapter/a;->e:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/adapter/a;->f:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lvw/a;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
