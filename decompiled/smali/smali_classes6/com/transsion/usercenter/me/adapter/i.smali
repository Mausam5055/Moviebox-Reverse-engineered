.class public final synthetic Lcom/transsion/usercenter/me/adapter/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/bean/IconItemInfo;

.field public final synthetic b:Lcom/transsion/usercenter/me/adapter/k;

.field public final synthetic c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/i;->a:Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/i;->b:Lcom/transsion/usercenter/me/adapter/k;

    iput-object p3, p0, Lcom/transsion/usercenter/me/adapter/i;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    iput-object p4, p0, Lcom/transsion/usercenter/me/adapter/i;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/i;->a:Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/i;->b:Lcom/transsion/usercenter/me/adapter/k;

    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/i;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    iget-object v3, p0, Lcom/transsion/usercenter/me/adapter/i;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/usercenter/me/adapter/k;->A(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
