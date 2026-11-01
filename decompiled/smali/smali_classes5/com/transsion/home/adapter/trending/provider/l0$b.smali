.class public final Lcom/transsion/home/adapter/trending/provider/l0$b;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/trending/provider/l0;->L(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

.field final synthetic b:Lcom/transsion/home/adapter/trending/provider/l0;

.field final synthetic c:Lcom/transsion/home/bean/OperateItem;

.field final synthetic d:Lrl/j;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->a:Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->b:Lcom/transsion/home/adapter/trending/provider/l0;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->c:Lcom/transsion/home/bean/OperateItem;

    iput-object p4, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->d:Lrl/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 10

    iget-object p4, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->a:Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->b:Lcom/transsion/home/adapter/trending/provider/l0;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->c:Lcom/transsion/home/bean/OperateItem;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/l0$b;->d:Lrl/j;

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "StateAwareRankListProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content item exposure, position:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", duration:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0, v1}, Lcom/transsion/home/adapter/trending/provider/l0;->B(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x64

    const-string v4, "sequence"

    if-ne p4, v3, :cond_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deepkLink"

    invoke-static {v0, v1, v2}, Lcom/transsion/home/adapter/trending/provider/l0;->C(Lcom/transsion/home/adapter/trending/provider/l0;Lcom/transsion/home/bean/OperateItem;Lrl/j;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "module_name"

    const-string p2, "more"

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p4, "subject_id"

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    :try_start_2
    invoke-interface {p3, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "subject_type"

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p4

    :cond_4
    :goto_0
    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "has_resource"

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p1, Lhj/i;->a:Lhj/i;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    invoke-static {v0}, Lcom/transsion/home/adapter/trending/provider/l0;->D(Lcom/transsion/home/adapter/trending/provider/l0;)I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void
.end method
