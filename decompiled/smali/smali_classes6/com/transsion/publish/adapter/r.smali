.class public final Lcom/transsion/publish/adapter/r;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lmp/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    return-void
.end method

.method private final C(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V
    .locals 7

    const-string p2, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLinksHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/publish/adapter/y;

    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.publish.api.LinkEntity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/publish/api/LinkEntity;

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/transsion/publish/api/LinkEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 p3, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "https://www."

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    if-eqz v1, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "http://www."

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    if-eqz v1, :cond_2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "www."

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object v1, p3

    :goto_2
    if-eqz v1, :cond_3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "https://"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_3
    move-object v1, p3

    :goto_3
    if-eqz v1, :cond_4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "http://"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/y;->g()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/y;->f()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/transsion/publish/adapter/n;

    invoke-direct {p3, p0, p2}, Lcom/transsion/publish/adapter/n;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final D(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    new-instance p0, Lfp/a;

    invoke-direct {p0}, Lfp/a;-><init>()V

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfp/a;->n(Ljava/lang/Integer;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p2, Lfp/a;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_1
    return-void
.end method

.method private final E(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V
    .locals 3

    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLocationHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/publish/adapter/z;

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.room.api.bean.LocationPlace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/room/api/bean/LocationPlace;

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/z;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/z;->g()Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/room/api/bean/LocationPlace;

    invoke-virtual {v0}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/room/api/bean/LocationPlace;

    invoke-virtual {v1}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/z;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/publish/adapter/o;

    invoke-direct {v0, p0, p2}, Lcom/transsion/publish/adapter/o;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/publish/adapter/z;

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/z;->f()Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/transsion/publish/adapter/p;

    invoke-direct {p3, p1}, Lcom/transsion/publish/adapter/p;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final F(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/publish/adapter/z;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/r;->L(Landroid/content/Context;)V

    return-void
.end method

.method private static final G(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 3

    new-instance p1, Lfp/a;

    invoke-direct {p1}, Lfp/a;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfp/a;->n(Ljava/lang/Integer;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/room/api/bean/LocationPlace;

    invoke-virtual {p1, p0}, Lfp/a;->q(Lcom/transsion/room/api/bean/LocationPlace;)V

    sget-object p0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p0, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    check-cast p0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lfp/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method private final K(Landroid/content/Context;)V
    .locals 3

    const-string v0, "/room/list"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "is_select_room"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final L(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lye/c;->a:Lye/c;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lye/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/publish/ui/SelectLocationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final M(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lyj/a;->a:Lyj/a$a;

    const-class v1, Lyj/b;

    invoke-virtual {v0, v1}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lyj/b;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private final N(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V
    .locals 5

    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectWorkHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/publish/adapter/n0;

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/adapter/n0;

    invoke-virtual {v0}, Lcom/transsion/publish/adapter/n0;->f()Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object v0

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, ""

    :cond_1
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    sget v3, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    invoke-virtual {v2, v3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/adapter/n0;

    invoke-virtual {v0}, Lcom/transsion/publish/adapter/n0;->i()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/publish/adapter/n0;

    invoke-virtual {v1}, Lcom/transsion/publish/adapter/n0;->h()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    sget-object v2, Ljn/e;->a:Ljn/e;

    invoke-virtual {v2, p3}, Ljn/e;->e(Lcom/transsion/moviedetailapi/bean/Subject;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p3}, Lin/a;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljn/e;->g(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/moviedetailapi/g;->a(Ljava/lang/Integer;)I

    move-result p3

    invoke-virtual {v1, p3, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorrelation()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/n0;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/n0;->g()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/n0;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/n0;->g()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p3

    new-instance v0, Lcom/transsion/publish/adapter/j;

    invoke-direct {v0, p0, p1}, Lcom/transsion/publish/adapter/j;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/publish/adapter/n0;

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/n0;->g()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/publish/adapter/n0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/transsion/publish/adapter/k;

    invoke-direct {p3, p0, p2}, Lcom/transsion/publish/adapter/k;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final O(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lfp/a;

    invoke-direct {p0}, Lfp/a;-><init>()V

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfp/a;->n(Ljava/lang/Integer;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p2, Lfp/a;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method private static final P(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/publish/adapter/n0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/r;->M(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->G(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->P(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->O(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->F(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/publish/adapter/r;->r(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->y(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->D(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->z(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->t(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->s(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private final q(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V
    .locals 4

    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectAudioHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/publish/adapter/b;

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.publish.api.AudioEntity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/publish/api/AudioEntity;

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->i()Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {v0}, Lcom/transsion/publish/api/AudioEntity;->getImageTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->h()Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {v0}, Lcom/transsion/publish/api/AudioEntity;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lmp/d;->b()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    move-result-object p3

    sget v0, Lcom/transsion/publish/R$drawable;->ic_audio_pause:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    move-result-object p3

    sget v0, Lcom/transsion/publish/R$drawable;->ic_audio_play:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/b;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/publish/adapter/h;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/publish/adapter/h;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/b;->g()Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance p3, Lcom/transsion/publish/adapter/i;

    invoke-direct {p3, p1}, Lcom/transsion/publish/adapter/i;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final r(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-nez p3, :cond_0

    new-instance p3, Lmp/d;

    invoke-direct {p3}, Lmp/d;-><init>()V

    iput-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    :cond_0
    iget-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lmp/d;->b()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$drawable;->ic_audio_pause:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lmp/d;->c()V

    goto :goto_0

    :cond_1
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    move-result-object p3

    sget v0, Lcom/transsion/publish/R$drawable;->ic_audio_play:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getLocalPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-eqz p0, :cond_2

    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/b;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "getContext(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/publish/adapter/q;

    invoke-direct {v0, p1}, Lcom/transsion/publish/adapter/q;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p3, p2, v1, v0}, Lmp/d;->d(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_2
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/transsion/publish/R$drawable;->ic_audio_pause:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private static final s(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/publish/adapter/b;

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/transsion/publish/R$drawable;->ic_audio_play:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static final t(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 3

    new-instance p1, Lfp/a;

    invoke-direct {p1}, Lfp/a;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfp/a;->o(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lfp/a;->n(Ljava/lang/Integer;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {p1, p0}, Lfp/a;->k(Lcom/transsion/publish/api/AudioEntity;)V

    sget-object p0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p0, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    check-cast p0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lfp/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method private final x(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V
    .locals 1

    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectGroupHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/publish/adapter/w;

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "null cannot be cast to non-null type com.transsion.publish.api.GroupBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/publish/api/GroupBean;

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/w;

    invoke-virtual {p3}, Lcom/transsion/publish/adapter/w;->g()Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/api/GroupBean;

    invoke-virtual {v0}, Lcom/transsion/publish/api/GroupBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/transsion/publish/adapter/w;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/publish/adapter/l;

    invoke-direct {v0, p0, p2}, Lcom/transsion/publish/adapter/l;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/publish/adapter/w;

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/w;->f()Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/transsion/publish/adapter/m;

    invoke-direct {p3, p1}, Lcom/transsion/publish/adapter/m;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final y(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/publish/adapter/w;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/r;->K(Landroid/content/Context;)V

    return-void
.end method

.method private static final z(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 3

    new-instance p1, Lfp/a;

    invoke-direct {p1}, Lfp/a;-><init>()V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfp/a;->n(Ljava/lang/Integer;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/publish/api/GroupBean;

    invoke-virtual {p1, p0}, Lfp/a;->m(Lcom/transsion/publish/api/GroupBean;)V

    sget-object p0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p0, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    check-cast p0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lfp/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final B()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/a;

    invoke-virtual {v0}, Lin/a;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/a;

    invoke-virtual {v0}, Lin/a;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public final H()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/a;

    invoke-virtual {v1}, Lin/a;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmp/d;->c()V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final I(Lin/a;)V
    .locals 1

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final J(Lin/a;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lin/a;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    move v1, v2

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_2
    check-cast v4, Lin/a;

    instance-of v4, v4, Lcom/transsion/room/api/bean/LocationPlace;

    if-eqz v4, :cond_3

    move v1, v3

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_5
    check-cast v4, Lin/a;

    instance-of v4, v4, Lcom/transsion/publish/api/GroupBean;

    if-eqz v4, :cond_6

    move v1, v3

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_8
    check-cast v4, Lin/a;

    instance-of v4, v4, Lcom/transsion/publish/api/LinkEntity;

    if-eqz v4, :cond_9

    move v1, v3

    :cond_9
    move v3, v5

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_b
    check-cast v4, Lin/a;

    instance-of v4, v4, Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v4, :cond_c

    move v1, v3

    :cond_c
    move v3, v5

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_e
    check-cast v4, Lin/a;

    instance-of v4, v4, Lcom/transsion/publish/api/AudioEntity;

    if-eqz v4, :cond_f

    move v1, v3

    :cond_f
    move v3, v5

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lmp/d;->f()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    :cond_12
    :goto_5
    if-eq v1, v2, :cond_13

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/transsion/publish/adapter/r;->setData(Ljava/util/List;)V

    goto :goto_6

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/transsion/publish/adapter/r;->addData(Ljava/util/List;)V

    :goto_6
    return-void
.end method

.method public final addData(Ljava/util/List;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/a;

    invoke-virtual {p1}, Lin/a;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/a;

    invoke-virtual {v0}, Lin/a;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->E(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->x(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->C(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->N(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->q(Landroidx/recyclerview/widget/RecyclerView$b0;ILin/a;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    new-instance p1, Lcom/transsion/publish/adapter/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_publish_location:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/z;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/z;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_publish_group:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/w;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/w;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_publish_link:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/y;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/y;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_publish_work:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/n0;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/n0;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_publish_music:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/b;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->b:Lmp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmp/d;->f()V

    :cond_0
    return-void
.end method

.method public final v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/a;

    invoke-virtual {v2}, Lin/a;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v1, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method
