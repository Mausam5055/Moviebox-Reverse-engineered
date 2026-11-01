.class public final Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lxr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;->initViewData(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment$b;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 9

    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment$b;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    invoke-static {p2}, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;->r0(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/b;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-lt p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment$b;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    invoke-static {p2}, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;->r0(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/b;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    goto :goto_1

    :cond_2
    move-object p2, p4

    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment$b;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    invoke-static {v0}, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;->p0(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;)Ltr/a;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment$b;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    invoke-static {v0}, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;->s0(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, p4

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, p4

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getItemType()Ljava/lang/String;

    move-result-object p4

    :cond_5
    move-object v6, p4

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_6
    move v7, p3

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment$b;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;->q0(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Ltr/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
