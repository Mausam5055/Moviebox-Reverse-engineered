.class public final synthetic Lcom/transsion/usercenter/me/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;

.field public final synthetic c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/c;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/c;->b:Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;

    iput-object p3, p0, Lcom/transsion/usercenter/me/adapter/c;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/c;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/c;->b:Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;

    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/c;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
