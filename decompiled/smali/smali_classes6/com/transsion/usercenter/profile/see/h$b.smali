.class public final Lcom/transsion/usercenter/profile/see/h$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/see/h;->o(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/usercenter/profile/see/h;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/see/h;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/see/h;->g(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/see/h$b;->e(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;)V

    return-void
.end method

.method public e(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;)V
    .locals 2

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/see/h;->g(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h$b;->d:Lcom/transsion/usercenter/profile/see/h;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/see/h;->h(Lcom/transsion/usercenter/profile/see/h;I)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPerPage()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/see/h;->i(Lcom/transsion/usercenter/profile/see/h;I)V

    invoke-static {v0}, Lcom/transsion/usercenter/profile/see/h;->e(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getTotalCount()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
