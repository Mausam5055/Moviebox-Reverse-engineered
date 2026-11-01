.class public final Lcom/transsion/moviedetail/fragment/SubjectListFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$b;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$b;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMAdapter$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/moviedetail/adapter/j;

    move-result-object v2

    if-eqz v2, :cond_4

    move v7, p1

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ""

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMAdapter$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/moviedetail/adapter/j;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMAdapter$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/moviedetail/adapter/j;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetail/adapter/j;->S1()Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    move-object v4, v2

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMExposureList(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMExposureList(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v3, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$pageName(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$subpageName(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v11, 0x0

    move v7, p1

    move-wide/from16 v8, p2

    invoke-static/range {v3 .. v13}, Lcom/transsion/postdetail/helper/a;->x(Lcom/transsion/postdetail/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
