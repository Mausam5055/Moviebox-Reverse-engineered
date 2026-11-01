.class public final Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lkh/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;->r0(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;)Lcom/transsion/search/fragment/values/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onItemViewVisible(ZI)V
    .locals 8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

    invoke-static {p1}, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;->r0(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;)Lcom/transsion/search/fragment/values/adapter/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/bean/SearchSubject;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Lcom/transsion/search/fragment/values/SearchValuesFragment;->j:Lcom/transsion/search/fragment/values/SearchValuesFragment$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    const/4 v7, 0x3

    const-string v2, ""

    const-string v4, ""

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/search/fragment/values/SearchValuesFragment$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    return-void
.end method
