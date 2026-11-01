.class public final Lcom/transsion/home/category/fragment/CategoryFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lhl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/category/fragment/CategoryFragment;->initViewData(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/category/fragment/CategoryFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/category/fragment/CategoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/category/fragment/CategoryFragment$b;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 9

    iget-object p2, p0, Lcom/transsion/home/category/fragment/CategoryFragment$b;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    invoke-static {p2}, Lcom/transsion/home/category/fragment/CategoryFragment;->v0(Lcom/transsion/home/category/fragment/CategoryFragment;)Lcom/transsion/home/category/adapter/e;

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
    iget-object p2, p0, Lcom/transsion/home/category/fragment/CategoryFragment$b;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    invoke-static {p2}, Lcom/transsion/home/category/fragment/CategoryFragment;->v0(Lcom/transsion/home/category/fragment/CategoryFragment;)Lcom/transsion/home/category/adapter/e;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    goto :goto_1

    :cond_2
    move-object p2, p4

    :goto_1
    iget-object v0, p0, Lcom/transsion/home/category/fragment/CategoryFragment$b;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    invoke-static {v0}, Lcom/transsion/home/category/fragment/CategoryFragment;->t0(Lcom/transsion/home/category/fragment/CategoryFragment;)Lrl/b;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/home/category/fragment/CategoryFragment$b;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    invoke-static {v0}, Lcom/transsion/home/category/fragment/CategoryFragment;->w0(Lcom/transsion/home/category/fragment/CategoryFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, p4

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, p4

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getItemType()Ljava/lang/String;

    move-result-object p4

    :cond_5
    move-object v6, p4

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_6
    move v7, p3

    iget-object p1, p0, Lcom/transsion/home/category/fragment/CategoryFragment$b;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    invoke-static {p1}, Lcom/transsion/home/category/fragment/CategoryFragment;->u0(Lcom/transsion/home/category/fragment/CategoryFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lrl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
