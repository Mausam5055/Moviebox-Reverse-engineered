.class public final Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;
.super Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment<",
        "Lfu/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001d\u0010\n\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;",
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;",
        "Lfu/h;",
        "<init>",
        "()V",
        "",
        "l0",
        "",
        "Leu/a;",
        "list",
        "n0",
        "(Ljava/util/List;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "j0",
        "(Landroid/view/LayoutInflater;)Lfu/h;",
        "initView",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "lazyLoadData",
        "Lhu/b;",
        "mCallback",
        "m0",
        "(Lhu/b;)V",
        "Lcom/transsion/subtitle/helper/j;",
        "g",
        "Lcom/transsion/subtitle/helper/j;",
        "stHelper",
        "h",
        "ndHelper",
        "i",
        "Lhu/b;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private g:Lcom/transsion/subtitle/helper/j;

.field private h:Lcom/transsion/subtitle/helper/j;

.field private i:Lhu/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->k0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->o0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->p0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->q0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final k0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->h()Landroidx/lifecycle/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "SELECT_SUBTITLE"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final l0()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->i:Lhu/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lhu/b;->j()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/a;

    invoke-virtual {v2}, Leu/a;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->n0(Ljava/util/List;)V

    return-void
.end method

.method private final n0(Ljava/util/List;)V
    .locals 6

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v1, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showSyncAdjustLayout() --> list.size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/h;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfu/h;->f:Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lfu/h;->e:Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/a;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/h;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lfu/h;->f:Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->g:Lcom/transsion/subtitle/helper/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/helper/j;->r(Leu/a;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->g:Lcom/transsion/subtitle/helper/j;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/transsion/subtitle/fragment/b0;

    invoke-direct {v0, p0}, Lcom/transsion/subtitle/fragment/b0;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/helper/j;->q(Lkotlin/jvm/functions/Function2;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/h;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lfu/h;->c:Landroid/widget/Space;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/h;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lfu/h;->c:Landroid/widget/Space;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/a;

    invoke-virtual {v0}, Leu/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1st"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lfu/h;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lfu/h;->f:Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1st "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->g:Lcom/transsion/subtitle/helper/j;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/transsion/subtitle/helper/j;->r(Leu/a;)V

    :cond_7
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->g:Lcom/transsion/subtitle/helper/j;

    if-eqz v1, :cond_8

    new-instance v2, Lcom/transsion/subtitle/fragment/c0;

    invoke-direct {v2, p0}, Lcom/transsion/subtitle/fragment/c0;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;)V

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/helper/j;->q(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    invoke-virtual {v0}, Leu/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2nd"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lfu/h;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lfu/h;->e:Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2nd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->h:Lcom/transsion/subtitle/helper/j;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lcom/transsion/subtitle/helper/j;->r(Leu/a;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->h:Lcom/transsion/subtitle/helper/j;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/transsion/subtitle/fragment/d0;

    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/d0;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/helper/j;->q(Lkotlin/jvm/functions/Function2;)V

    goto/16 :goto_0

    :cond_a
    :goto_1
    return-void
.end method

.method private static final o0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->i:Lhu/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lhu/b;->d(Leu/a;J)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final p0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->i:Lhu/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lhu/b;->d(Leu/a;J)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final q0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->i:Lhu/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lhu/b;->d(Leu/a;J)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->j0(Landroid/view/LayoutInflater;)Lfu/h;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfu/h;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/subtitle/fragment/a0;

    invoke-direct {p2, p0}, Lcom/transsion/subtitle/fragment/a0;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p1, Lcom/transsion/subtitle/helper/j;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lfu/h;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p2, Lfu/h;->f:Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    invoke-direct {p1, p2}, Lcom/transsion/subtitle/helper/j;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/helper/j;->o(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->g:Lcom/transsion/subtitle/helper/j;

    new-instance p1, Lcom/transsion/subtitle/helper/j;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lfu/h;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lfu/h;->e:Lcom/transsion/subtitle/view/SubtitleSyncAdjustView;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-direct {p1, p2}, Lcom/transsion/subtitle/helper/j;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/helper/j;->o(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->h:Lcom/transsion/subtitle/helper/j;

    return-void
.end method

.method public j0(Landroid/view/LayoutInflater;)Lfu/h;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfu/h;->c(Landroid/view/LayoutInflater;)Lfu/h;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public lazyLoadData()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->l0()V

    return-void
.end method

.method public final m0(Lhu/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->i:Lhu/b;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->l0()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "dialog_subtitle_sync_adjust"

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->e0(Ljava/lang/String;)V

    return-void
.end method
