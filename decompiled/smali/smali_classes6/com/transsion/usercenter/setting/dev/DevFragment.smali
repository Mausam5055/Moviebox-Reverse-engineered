.class public final Lcom/transsion/usercenter/setting/dev/DevFragment;
.super Lcom/transsion/baseui/fragment/BaseListFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseListFragment<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017R\u0014\u0010\u001d\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/dev/DevFragment;",
        "Lcom/transsion/baseui/fragment/BaseListFragment;",
        "",
        "<init>",
        "()V",
        "s0",
        "()Ljava/lang/String;",
        "getPageStateLayoutTitle",
        "",
        "isShowPageStateLayoutTitle",
        "()Z",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "m0",
        "()Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "G0",
        "loadMore",
        "initViewModel",
        "lazyLoadData",
        "retryLoadData",
        "",
        "b",
        "I",
        "page",
        "c",
        "pageSize",
        "d",
        "Ljava/lang/String;",
        "id",
        "e",
        "Z",
        "isSetRvEmptyLayout",
        "Lcom/transsion/usercenter/setting/dev/f;",
        "f",
        "Lkotlin/Lazy;",
        "R0",
        "()Lcom/transsion/usercenter/setting/dev/f;",
        "mViewModel",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private final d:Ljava/lang/String;

.field private e:Z

.field private final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->c:I

    const-string v0, "ID:001"

    iput-object v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->d:Ljava/lang/String;

    new-instance v0, Lcom/transsion/usercenter/setting/dev/a;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/dev/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic O0()Lcom/transsion/usercenter/setting/dev/f;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/setting/dev/DevFragment;->U0()Lcom/transsion/usercenter/setting/dev/f;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic P0(Lcom/transsion/usercenter/setting/dev/DevFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->T0(Lcom/transsion/usercenter/setting/dev/DevFragment;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/usercenter/setting/dev/DevFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/dev/DevFragment;->S0(Lcom/transsion/usercenter/setting/dev/DevFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final R0()Lcom/transsion/usercenter/setting/dev/f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/setting/dev/f;

    return-object v0
.end method

.method private static final S0(Lcom/transsion/usercenter/setting/dev/DevFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->changeLoadingState(Z)V

    iget-boolean v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0, v3, v2, v3}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->A0()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    invoke-static {p0, v3, v2, v3}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->E0()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    const/16 v4, 0x14

    if-le v1, v4, :cond_6

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->E0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    const/16 v4, 0x1e

    if-le v1, v4, :cond_8

    invoke-static {p0, v0, v2, v3}, Lcom/transsion/baseui/fragment/BaseListFragment;->D0(Lcom/transsion/baseui/fragment/BaseListFragment;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->B0()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final T0(Lcom/transsion/usercenter/setting/dev/DevFragment;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->R0()Lcom/transsion/usercenter/setting/dev/f;

    move-result-object v0

    iget v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    iget v2, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->c:I

    iget-object p0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/usercenter/setting/dev/f;->e(IILjava/lang/String;)V

    return-void
.end method

.method private static final U0()Lcom/transsion/usercenter/setting/dev/f;
    .locals 1

    new-instance v0, Lcom/transsion/usercenter/setting/dev/f;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/dev/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public G0()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->lazyLoadData()V

    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u65e0\u7f51\u7edc\u3001\u65e0\u6570\u636e\u7684\u65f6\u5019\u5c55\u793a\u7684\u6807\u9898"

    return-object v0
.end method

.method public initViewModel()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->R0()Lcom/transsion/usercenter/setting/dev/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/dev/f;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/setting/dev/c;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/setting/dev/c;-><init>(Lcom/transsion/usercenter/setting/dev/DevFragment;)V

    new-instance v2, Lcom/transsion/usercenter/setting/dev/DevFragment$a;

    invoke-direct {v2, v1}, Lcom/transsion/usercenter/setting/dev/DevFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lazyLoadData()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->M0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbk/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbk/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/usercenter/setting/dev/b;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/setting/dev/b;-><init>(Lcom/transsion/usercenter/setting/dev/DevFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public loadMore()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->lazyLoadData()V

    return-void
.end method

.method public m0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 1

    new-instance v0, Lcom/transsion/usercenter/setting/dev/d;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/dev/d;-><init>()V

    return-object v0
.end method

.method public retryLoadData()V
    .locals 2

    sget-object v0, Luh/b;->a:Luh/b$a;

    const-string v1, "\u8054\u7f51\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->lazyLoadData()V

    return-void
.end method

.method public s0()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6211\u662f\u6807\u9898"

    return-object v0
.end method
