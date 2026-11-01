.class public final Lcom/transsion/room/widget/SubjectDetailRoomsView;
.super Lcom/transsion/room/widget/RoomsBaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/room/widget/RoomsBaseView<",
        "Lbq/h0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/room/widget/SubjectDetailRoomsView;",
        "Lcom/transsion/room/widget/RoomsBaseView;",
        "Lbq/h0;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "initRecyclerView",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "getTitleView",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/SubjectDetailRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/SubjectDetailRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/widget/RoomsBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/transsion/room/R$layout;->view_subject_detail_rooms:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lbq/h0;->a(Landroid/view/View;)Lbq/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->setMViewBinding(Lg4/a;)V

    const/16 p1, 0xc

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/transsion/room/widget/SubjectDetailRoomsView;->initRecyclerView()V

    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    move-result-object p1

    sget-object p2, Lcom/transsion/room/api/RoomsViewType;->TYPE_SUBJECT_DETAIL:Lcom/transsion/room/api/RoomsViewType;

    invoke-virtual {p1, p2}, Lcom/transsion/room/adapter/RecommendRoomsAdapter;->G1(Lcom/transsion/room/api/RoomsViewType;)V

    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/h0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lbq/h0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/room/widget/s;

    invoke-direct {p2, p0}, Lcom/transsion/room/widget/s;-><init>(Lcom/transsion/room/widget/SubjectDetailRoomsView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/widget/SubjectDetailRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/room/widget/SubjectDetailRoomsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/widget/SubjectDetailRoomsView;->E(Lcom/transsion/room/widget/SubjectDetailRoomsView;Landroid/view/View;)V

    return-void
.end method

.method private static final E(Lcom/transsion/room/widget/SubjectDetailRoomsView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->B()V

    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/h0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbq/h0;->b:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/room/widget/SubjectDetailRoomsView;->getTitleView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/h0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbq/h0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initRecyclerView()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/h0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbq/h0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v1, Lig/a;

    const/16 v2, 0x8

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v3

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v4}, Lig/a;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
