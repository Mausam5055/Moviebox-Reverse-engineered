.class public final Lcom/transsion/home/fragment/tab/MovieFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lhl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/MovieFragment;->l1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/MovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/MovieFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$c;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 6

    iget-object p4, p0, Lcom/transsion/home/fragment/tab/MovieFragment$c;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p4}, Lcom/transsion/home/fragment/tab/MovieFragment;->H0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$c;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    if-lt p1, p4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->H0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/adapter/a;

    move-result-object p4

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/home/bean/MovieItem;

    goto :goto_0

    :cond_1
    move-object p4, v1

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, ""

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/transsion/home/bean/MovieItem;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v3

    :cond_3
    const-string v5, "subject_id"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/transsion/home/bean/MovieItem;->getHasResource()Ljava/lang/Boolean;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "has_resource"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/transsion/home/bean/MovieItem;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, p1

    :cond_6
    :goto_1
    const-string p1, "ops"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "filter_name"

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->G0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "browse_duration"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->K0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/bean/FilterItems;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/home/fragment/tab/MovieFragment;->f1(Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    :goto_2
    return-void
.end method
