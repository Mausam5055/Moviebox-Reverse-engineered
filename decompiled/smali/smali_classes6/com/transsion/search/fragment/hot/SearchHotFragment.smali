.class public final Lcom/transsion/search/fragment/hot/SearchHotFragment;
.super Lcom/transsion/search/fragment/BaseSearchMainFragment;

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/hot/SearchHotFragment$a;,
        Lcom/transsion/search/fragment/hot/SearchHotFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/search/fragment/BaseSearchMainFragment<",
        "Lrq/c;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 V2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002WXB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u0019\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\'\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0005J\u0017\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010,\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008.\u0010\u0005J\u000f\u0010/\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0005J\u000f\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00081\u00102J\r\u00103\u001a\u00020\u0006\u00a2\u0006\u0004\u00083\u0010\u0005J\u0015\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u001b\u00a2\u0006\u0004\u00085\u00106J\u0017\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00088\u0010\rJ\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008=\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010A\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010C\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010DR\u0018\u0010F\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u001b0H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010L\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010Q\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010U\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/transsion/search/fragment/hot/SearchHotFragment;",
        "Lcom/transsion/search/fragment/BaseSearchMainFragment;",
        "Lrq/c;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initViewModel",
        "initHistory",
        "loadHistoryData",
        "",
        "isExpand",
        "expandHistoryLine",
        "(Z)V",
        "showHistoryList",
        "Lcom/transsion/search/bean/HotSubjectEntity;",
        "subjectEntity",
        "initHotWordWithData",
        "(Lcom/transsion/search/bean/HotSubjectEntity;)V",
        "initEveryoneSearch",
        "it",
        "initRankWithData",
        "initViewPager",
        "Landroid/content/Context;",
        "context",
        "",
        "index",
        "",
        "textStr",
        "Lj00/d;",
        "getIndicatorText",
        "(Landroid/content/Context;ILjava/lang/String;)Lj00/d;",
        "Lj00/c;",
        "getIndicatorView",
        "(Landroid/content/Context;)Lj00/c;",
        "clearTipsDialog",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lrq/c;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "lazyLoadData",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "onConnected",
        "keyword",
        "addHistoryWord",
        "(Ljava/lang/String;)V",
        "hidden",
        "onHiddenChanged",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "Lcom/transsion/search/fragment/hot/adapter/d;",
        "mSearchHistoryAdapter",
        "Lcom/transsion/search/fragment/hot/adapter/d;",
        "expand",
        "Z",
        "historyExpandLine",
        "I",
        "historyCollapseLine",
        "hotSearchWord",
        "Ljava/lang/String;",
        "",
        "mHistoryList",
        "Ljava/util/List;",
        "Lcom/transsion/search/fragment/hot/adapter/f;",
        "everyOneSearchAdapter",
        "Lcom/transsion/search/fragment/hot/adapter/f;",
        "mHotSubjectEntity",
        "Lcom/transsion/search/bean/HotSubjectEntity;",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "mSearchViewModel",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "Lcom/transsion/search/ad/SearchHotAdHelper;",
        "adHelper",
        "Lcom/transsion/search/ad/SearchHotAdHelper;",
        "Companion",
        "a",
        "b",
        "Search_psRelease"
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


# static fields
.field public static final Companion:Lcom/transsion/search/fragment/hot/SearchHotFragment$a;

.field public static final PAGE_NAME:Ljava/lang/String; = "search_hot_subject"


# instance fields
.field private adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

.field private everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

.field private expand:Z

.field private historyCollapseLine:I

.field private historyExpandLine:I

.field private hotSearchWord:Ljava/lang/String;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

.field private mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

.field private mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search/fragment/hot/SearchHotFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->Companion:Lcom/transsion/search/fragment/hot/SearchHotFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/search/fragment/BaseSearchMainFragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewModel$lambda$6$lambda$5$lambda$4(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIndicatorText(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/content/Context;ILjava/lang/String;)Lj00/d;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->getIndicatorText(Landroid/content/Context;ILjava/lang/String;)Lj00/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIndicatorView(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/content/Context;)Lj00/c;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->getIndicatorView(Landroid/content/Context;)Lj00/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMHotSubjectEntity$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lcom/transsion/search/bean/HotSubjectEntity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

    return-object p0
.end method

.method public static final synthetic access$setMHistoryList$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$showHistoryList(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->showHistoryList()V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/transsion/search/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewModel$lambda$6$lambda$5(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/transsion/search/bean/HotSubjectEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory$lambda$10(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final clearTipsDialog()V
    .locals 5

    const-string v0, "getString(...)"

    :try_start_0
    new-instance v1, Lcom/tn/lib/widget/dialog/TRDialog$a;

    invoke-direct {v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    sget v2, Lcom/transsion/search/R$string;->search_clear_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->k(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v1

    sget v2, Lcom/transsion/search/R$string;->search_clear_des:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v1

    sget v2, Lcom/transsion/search/R$string;->search_clear_cancel:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v1

    sget v2, Lcom/transsion/search/R$string;->search_clear_clear:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$drawable;->libui_sub_btn2_normal:I

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    move-result-object v0

    const-string v1, "clear_tips"

    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->showHistoryList$lambda$13(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHotWordWithData$lambda$19$lambda$18(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    return-void
.end method

.method private final expandHistoryLine(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Luq/g;

    invoke-direct {v1, p0, p1}, Luq/g;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final expandHistoryLine$lambda$12(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v0, v0, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    invoke-virtual {v1}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->n0()I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->q0(I)V

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_5
    iget v3, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    if-le v0, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->o0()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0, p1, v3}, Lcom/transsion/search/fragment/hot/adapter/d;->W1(ZZI)V

    :cond_7
    iget-object v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    new-instance v2, Luq/k;

    invoke-direct {v2, v1, v3, p0, p1}, Luq/k;-><init>(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method private static final expandHistoryLine$lambda$12$lambda$11(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result p0

    if-gt p0, p1, :cond_0

    iget-object p0, p2, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p3, p1}, Lcom/transsion/search/fragment/hot/adapter/d;->W1(ZZI)V

    :cond_0
    iget-object p0, p2, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory$lambda$10$lambda$9(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine$lambda$12$lambda$11(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    return-void
.end method

.method private final getIndicatorText(Landroid/content/Context;ILjava/lang/String;)Lj00/d;
    .locals 3

    new-instance v0, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    const/16 v2, 0x11

    invoke-direct {v0, p1, v2, v1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;-><init>(Landroid/content/Context;II)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;->setSelectTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/transsion/search/fragment/hot/SearchHotFragment$c;

    invoke-direct {p1, p0, p2}, Lcom/transsion/search/fragment/hot/SearchHotFragment$c;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private final getIndicatorView(Landroid/content/Context;)Lj00/c;
    .locals 3

    new-instance v0, Lcom/tn/lib/view/GradientLinePagerIndicator;

    invoke-direct {v0, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1, p1, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine$lambda$12(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initEveryoneSearch$lambda$23$lambda$22(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final initEveryoneSearch()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "hot_search_word"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->hotSearchWord:Ljava/lang/String;

    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/search/fragment/hot/adapter/f;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v1, Lcom/transsion/search/R$id;->tv_keyword:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    new-instance v1, Luq/i;

    invoke-direct {v1, p0}, Luq/i;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lp6/b;)V

    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    invoke-virtual {v1, v2}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->q0(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method private static final initEveryoneSearch$lambda$23$lambda$22(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/search/bean/HotSearchKeyWord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    move-object p2, v0

    :goto_3
    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    return-void

    :cond_2
    check-cast p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    new-instance v0, Luq/j;

    invoke-direct {v0, p0}, Luq/j;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    const-string v1, "hot"

    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->v0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "mb_sug"

    :cond_4
    invoke-virtual {p1, p2, p3, p0}, Lcom/transsion/search/widget/d$a;->h(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static final initEveryoneSearch$lambda$23$lambda$22$lambda$21(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/transsion/search/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final initHistory()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/c;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Luq/e;

    invoke-direct {v1, p0}, Luq/e;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/d;

    invoke-direct {v0}, Lcom/transsion/search/fragment/hot/adapter/d;-><init>()V

    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "mb_sug"

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/search/fragment/hot/adapter/d;->Y1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/search/R$id;->search_history_text:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz v0, :cond_4

    new-instance v1, Luq/f;

    invoke-direct {v1, p0}, Luq/f;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lp6/b;)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->loadHistoryData()V

    return-void
.end method

.method private static final initHistory$lambda$10(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/search/fragment/hot/adapter/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search/fragment/hot/adapter/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    move-object p2, v0

    :goto_3
    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    return-void

    :cond_2
    check-cast p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    new-instance v0, Luq/h;

    invoke-direct {v0, p0}, Luq/h;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    const-string v1, "history"

    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->v0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "mb_sug"

    :cond_4
    invoke-virtual {p1, p2, p3, p0}, Lcom/transsion/search/widget/d$a;->f(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static final initHistory$lambda$10$lambda$9(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/transsion/search/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initHistory$lambda$7(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->clearTipsDialog()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->g(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private final initHotWordWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lrq/c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/search/bean/HotSubjectEntity;->getEveryoneSearch()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_4

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/search/bean/HotSubjectEntity;->getEveryoneSearch()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/search/bean/HotSearchKeyWord;

    invoke-virtual {v1}, Lcom/transsion/search/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->hotSearchWord:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lrq/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    new-instance v1, Luq/d;

    invoke-direct {v1, p0, v0}, Luq/d;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static final initHotWordWithData$lambda$19$lambda$18(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    invoke-virtual {v0}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->o0()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/search/bean/HotSearchKeyWord;

    invoke-virtual {v3}, Lcom/transsion/search/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "mb_sug"

    :cond_2
    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/search/widget/d$a;->g(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final initRankWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/search/bean/HotSubjectEntity;->getHot()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lrq/c;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lrq/c;->l:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->getNavigator()Lh00/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lh00/a;->notifyDataSetChanged()V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lrq/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lrq/c;->n:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljg/c;->h(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static final initView$lambda$2(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->g(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lrq/c;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lrq/c;->p:Landroidx/core/widget/NestedScrollView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lnp/o;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final initViewModel()V
    .locals 4

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "sug_source"

    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v1

    new-instance v2, Luq/c;

    invoke-direct {v2, p0}, Luq/c;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    new-instance v3, Lcom/transsion/search/fragment/hot/SearchHotFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/search/fragment/hot/SearchHotFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    return-void
.end method

.method private static final initViewModel$lambda$6$lambda$5(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/transsion/search/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/c;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/c;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    if-eqz v0, :cond_2

    new-instance v1, Luq/a;

    invoke-direct {v1, p0}, Luq/a;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/search/ad/SearchHotAdHelper;->y(Lkotlin/jvm/functions/Function1;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhj/b;->k(Z)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHotWordWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V

    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initRankWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewModel$lambda$6$lambda$5$lambda$4(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lrq/c;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lrq/c;->d:Landroidx/cardview/widget/CardView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final initViewPager()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/c;->l:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    new-instance v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;

    invoke-direct {v2, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lj00/a;)V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lh00/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;

    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lrq/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v0, Lrq/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lrq/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lrq/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/transsion/search/fragment/hot/SearchHotFragment$f;

    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$f;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_5
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initView$lambda$2(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initEveryoneSearch$lambda$23$lambda$22$lambda$21(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->showHistoryList$lambda$16(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    return-void
.end method

.method private final loadHistoryData()V
    .locals 3

    sget-object v0, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {v0}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object v0

    new-instance v1, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;

    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/transsion/search/SearchManager;->m(ILcom/transsion/search/a;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/search/fragment/SearchSubjectFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.search.fragment.SearchSubjectFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/search/fragment/SearchSubjectFragment;

    invoke-virtual {v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->N0()V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory$lambda$7(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/view/View;)V

    return-void
.end method

.method private final showHistoryList()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_history_lines_double"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    :cond_2
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz v0, :cond_3

    new-instance v3, Luq/m;

    invoke-direct {v3, p0}, Luq/m;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v3}, Lcom/transsion/search/fragment/hot/adapter/d;->V1(Lkotlin/jvm/functions/Function0;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    new-instance v4, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "requireContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    invoke-virtual {v4, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    iget-boolean v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    :goto_1
    invoke-virtual {v4, v2}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->q0(I)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/transsion/search/fragment/hot/adapter/a;

    invoke-direct {v4, v3, v2}, Lcom/transsion/search/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    new-instance v1, Luq/b;

    invoke-direct {v1, p0}, Luq/b;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_3
    return-void
.end method

.method private static final showHistoryList$lambda$13(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lkotlin/Unit;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    invoke-direct {p0, v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lrq/c;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lnp/o;->a(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showHistoryList$lambda$16(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    invoke-direct {p0, v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    return-void
.end method


# virtual methods
.method public final addHistoryWord(Ljava/lang/String;)V
    .locals 2

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {v0}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/search/SearchManager;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lrq/c;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lrq/c;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lrq/c;->c(Landroid/view/LayoutInflater;)Lrq/c;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewModel()V

    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory()V

    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initEveryoneSearch()V

    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewPager()V

    new-instance p1, Lcom/transsion/search/ad/SearchHotAdHelper;

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/search/ad/SearchHotAdHelper;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;)V

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lrq/c;->b:Lcom/transsion/search/ad/SearchHotAdContainerView;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/transsion/search/ad/SearchHotAdHelper;->m(Lcom/transsion/search/ad/SearchHotAdContainerView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lrq/c;->p:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_1

    new-instance p2, Luq/l;

    invoke-direct {p2, p0}, Luq/l;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$e;)V

    :cond_1
    return-void
.end method

.method public lazyLoadData()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->k()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/c;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lrq/c;->k:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "search_hot_subject"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhj/b;->l(Z)V

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/transsion/search/fragment/BaseSearchMainFragment;->Companion:Lcom/transsion/search/fragment/BaseSearchMainFragment$a;

    invoke-virtual {v2}, Lcom/transsion/search/fragment/BaseSearchMainFragment$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "search_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final onConnected()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->lazyLoadData()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/search/ad/SearchHotAdHelper;->p()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/search/fragment/BaseSearchMainFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->loadHistoryData()V

    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clear_tips"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {p1}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/search/SearchManager;->j()V

    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lrq/c;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lrq/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    invoke-virtual {p1}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->p0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    sget-object p1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "mb_sug"

    :cond_4
    invoke-virtual {p1, v0}, Lcom/transsion/search/widget/d$a;->c(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
