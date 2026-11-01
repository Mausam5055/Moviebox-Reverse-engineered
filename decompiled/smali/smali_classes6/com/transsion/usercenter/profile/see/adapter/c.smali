.class public final synthetic Lcom/transsion/usercenter/profile/see/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/adapter/c;->a:Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/see/adapter/c;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/adapter/c;->a:Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/see/adapter/c;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/profile/see/adapter/a$c;->y(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
