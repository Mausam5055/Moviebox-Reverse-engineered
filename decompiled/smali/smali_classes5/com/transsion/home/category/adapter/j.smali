.class public final Lcom/transsion/home/category/adapter/j;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/category/adapter/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        ">;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\"B\u001f\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000e\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/home/category/adapter/j;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lr6/i;",
        "",
        "datas",
        "Lhl/b;",
        "exposureHelper",
        "<init>",
        "(Ljava/util/List;Lhl/b;)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "",
        "showRank",
        "T1",
        "(Z)V",
        "G",
        "Lhl/b;",
        "Lcom/transsion/home/category/adapter/k;",
        "H",
        "Lkotlin/Lazy;",
        "R1",
        "()Lcom/transsion/home/category/adapter/k;",
        "playListItemProvider",
        "I",
        "a",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final I:Lcom/transsion/home/category/adapter/j$a;

.field public static final J:I

.field public static final K:I = 0x1

.field public static final L:I = 0x2


# instance fields
.field private final G:Lhl/b;

.field private final H:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/category/adapter/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/category/adapter/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/category/adapter/j;->I:Lcom/transsion/home/category/adapter/j$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/category/adapter/j;->J:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lhl/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            ">;",
            "Lhl/b;",
            ")V"
        }
    .end annotation

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/transsion/home/category/adapter/j;->G:Lhl/b;

    new-instance p1, Lcom/transsion/home/category/adapter/i;

    invoke-direct {p1}, Lcom/transsion/home/category/adapter/i;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/category/adapter/j;->H:Lkotlin/Lazy;

    invoke-direct {p0}, Lcom/transsion/home/category/adapter/j;->R1()Lcom/transsion/home/category/adapter/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    new-instance p1, Lcom/transsion/home/category/adapter/h;

    invoke-direct {p1}, Lcom/transsion/home/category/adapter/h;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method

.method public static synthetic Q1()Lcom/transsion/home/category/adapter/k;
    .locals 1

    invoke-static {}, Lcom/transsion/home/category/adapter/j;->S1()Lcom/transsion/home/category/adapter/k;

    move-result-object v0

    return-object v0
.end method

.method private final R1()Lcom/transsion/home/category/adapter/k;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/category/adapter/j;->H:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/category/adapter/k;

    return-object v0
.end method

.method private static final S1()Lcom/transsion/home/category/adapter/k;
    .locals 1

    new-instance v0, Lcom/transsion/home/category/adapter/k;

    invoke-direct {v0}, Lcom/transsion/home/category/adapter/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/home/category/adapter/j;->G:Lhl/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lhl/b;->h(Landroidx/recyclerview/widget/LinearLayoutManager;IZ)V

    :cond_0
    return-void
.end method

.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final T1(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/home/category/adapter/j;->R1()Lcom/transsion/home/category/adapter/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/home/category/adapter/k;->z(Z)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/home/category/adapter/j;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method
