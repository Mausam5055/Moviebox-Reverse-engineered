.class public final Lcom/transsion/home/fragment/filter/FilterFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lhl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/FilterFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/filter/FilterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/FilterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 4

    iget-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    invoke-static {p2}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s0()Z

    :cond_0
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    invoke-static {p2}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    if-lt p1, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/home/bean/MovieItem;

    goto :goto_0

    :cond_2
    move-object p2, p4

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v1

    :cond_4
    const-string v3, "subject_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getHasResource()Ljava/lang/Boolean;

    move-result-object p4

    :cond_5
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v2, "has_resource"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "sequence"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, p1

    :cond_7
    :goto_1
    const-string p1, "ops"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    invoke-static {p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->I0(Lcom/transsion/home/fragment/filter/FilterFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->J0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/bean/FilterItems;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lcom/transsion/home/fragment/filter/FilterFragment;->Z0(Ljava/lang/String;Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    :goto_2
    return-void
.end method
