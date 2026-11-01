.class public final Lcom/transsion/subtitle/fragment/AudioSelectListFragment;
.super Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment<",
        "Lfu/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 -2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\'\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J!\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/AudioSelectListFragment;",
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;",
        "Lfu/c;",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
        "list",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadBean",
        "",
        "k0",
        "(Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "h0",
        "(Landroid/view/LayoutInflater;)Lfu/c;",
        "lazyLoadData",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lhu/b;",
        "callback",
        "j0",
        "(Lhu/b;)V",
        "",
        "g",
        "Ljava/util/List;",
        "dataList",
        "h",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "Lcom/transsion/subtitle/adapter/a;",
        "i",
        "Lcom/transsion/subtitle/adapter/a;",
        "listAdapter",
        "",
        "j",
        "I",
        "selectedPosition",
        "k",
        "Lhu/b;",
        "mCallback",
        "l",
        "a",
        "VideoSubtitle_psRelease"
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
.field public static final l:Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;


# instance fields
.field private g:Ljava/util/List;

.field private h:Lcom/transsion/baselib/db/download/DownloadBean;

.field private i:Lcom/transsion/subtitle/adapter/a;

.field private j:I

.field private k:Lhu/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->l:Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->i0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic g0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k0(Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method private static final i0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    if-ne p4, p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    iget v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->setSelected(Z)V

    iget v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    iput p4, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->setSelected(Z)V

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    sget-object p2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object p4

    const-string v1, "<get-TAG>(...)"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getLanName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getLanCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item select, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k:Lhu/b;

    if-eqz p2, :cond_2

    invoke-interface {p2, p3}, Lhu/b;->h(Lcom/transsion/moviedetailapi/bean/DubsInfo;)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k:Lhu/b;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/transsion/subtitle/R$string;->audio_switch_toast:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "getString(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lhu/b;->c(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->a0()V

    return-void
.end method

.method private final k0(Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    iput-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->h0(Landroid/view/LayoutInflater;)Lfu/c;

    move-result-object p1

    return-object p1
.end method

.method public h0(Landroid/view/LayoutInflater;)Lfu/c;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfu/c;->c(Landroid/view/LayoutInflater;)Lfu/c;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/subtitle/adapter/a;

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/transsion/subtitle/adapter/a;-><init>(Ljava/util/List;)V

    new-instance p2, Lcom/transsion/subtitle/fragment/a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/subtitle/fragment/a;-><init>(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->i:Lcom/transsion/subtitle/adapter/a;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfu/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->i:Lcom/transsion/subtitle/adapter/a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public final j0(Lhu/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k:Lhu/b;

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method
