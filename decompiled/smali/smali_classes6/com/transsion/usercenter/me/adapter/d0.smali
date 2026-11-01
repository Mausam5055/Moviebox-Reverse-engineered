.class public final synthetic Lcom/transsion/usercenter/me/adapter/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/me/adapter/f0;

.field public final synthetic b:Lcom/transsion/memberapi/MemberInfo;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic d:Lcom/transsion/usercenter/profile/bean/MeItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/d0;->a:Lcom/transsion/usercenter/me/adapter/f0;

    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/d0;->b:Lcom/transsion/memberapi/MemberInfo;

    iput-object p3, p0, Lcom/transsion/usercenter/me/adapter/d0;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p4, p0, Lcom/transsion/usercenter/me/adapter/d0;->d:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/d0;->a:Lcom/transsion/usercenter/me/adapter/f0;

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/d0;->b:Lcom/transsion/memberapi/MemberInfo;

    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/d0;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v3, p0, Lcom/transsion/usercenter/me/adapter/d0;->d:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/usercenter/me/adapter/f0;->y(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
