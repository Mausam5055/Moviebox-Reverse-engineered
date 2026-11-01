.class public final Lcom/transsion/search/fragment/result/SearchResultTabFragment$e;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultTabFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$e;->e:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$e;->e:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/fragment/result/ResultWrapData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/search/fragment/result/ResultWrapData;->getType()Lcom/transsion/search/fragment/result/ResultType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/transsion/search/fragment/result/ResultType;->MORE:Lcom/transsion/search/fragment/result/ResultType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/transsion/search/fragment/result/ResultType;->TITLE:Lcom/transsion/search/fragment/result/ResultType;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x2

    :goto_2
    return p1
.end method
