.class public final Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lrq/d;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 R2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001SB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u0019\u0010\u000e\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J5\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J!\u0010&\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00122\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010(\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00122\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008(\u0010\'J\u000f\u0010)\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0005J\u000f\u0010*\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0005J\u0017\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008/\u0010.J\u0011\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00081\u00102R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00170>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010B\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010D\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010F\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010ER\u0016\u0010G\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010ER\u0016\u0010H\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010J\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001b\u0010Q\u001a\u00020L8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\u00a8\u0006T"
    }
    d2 = {
        "Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lrq/d;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "clear",
        "",
        "resetContent",
        "(Z)V",
        "postFinsh",
        "Lcom/transsion/publish/api/GroupBean;",
        "groupBean",
        "postGroup",
        "(Lcom/transsion/publish/api/GroupBean;)V",
        "searchJob",
        "initViewModel",
        "Landroid/view/View;",
        "emptyView",
        "()Landroid/view/View;",
        "clearTipsDialog",
        "showCheckDialog",
        "",
        "group_id",
        "subject_id",
        "opt",
        "",
        "position",
        "reportClick",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lrq/d;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initView",
        "lazyLoadData",
        "onDestroyView",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "isRefreshing",
        "Z",
        "Lcom/transsion/search/fragment/group/adapter/a;",
        "mSearchGroupAdapter",
        "Lcom/transsion/search/fragment/group/adapter/a;",
        "Lcom/transsion/search/fragment/group/adapter/b;",
        "mSearchKeywordAdapter",
        "Lcom/transsion/search/fragment/group/adapter/b;",
        "Lcom/transsion/search/adapter/b;",
        "mSearchWorkAdapter",
        "Lcom/transsion/search/adapter/b;",
        "",
        "mHistoryList",
        "Ljava/util/List;",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "mSearchViewModel",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "mType",
        "I",
        "page",
        "perPage",
        "mKeyword",
        "Ljava/lang/String;",
        "selectGroup",
        "Lcom/transsion/publish/api/GroupBean;",
        "Lcom/transsion/search/dialog/CheckTipsDialog;",
        "mCheckTipsDialog$delegate",
        "Lkotlin/Lazy;",
        "getMCheckTipsDialog",
        "()Lcom/transsion/search/dialog/CheckTipsDialog;",
        "mCheckTipsDialog",
        "Companion",
        "a",
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
.field public static final Companion:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;


# instance fields
.field private isRefreshing:Z

.field private final mCheckTipsDialog$delegate:Lkotlin/Lazy;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyword:Ljava/lang/String;

.field private mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

.field private mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

.field private mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

.field private mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

.field private mType:I

.field private page:I

.field private perPage:I

.field private selectGroup:Lcom/transsion/publish/api/GroupBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->Companion:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    new-instance v0, Lcom/transsion/search/fragment/group/e;

    invoke-direct {v0}, Lcom/transsion/search/fragment/group/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mCheckTipsDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$11(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getMSearchGroupAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/fragment/group/adapter/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    return-object p0
.end method

.method public static final synthetic access$getMSearchKeywordAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/fragment/group/adapter/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    return-object p0
.end method

.method public static final synthetic access$getMSearchViewModel$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMSearchWorkAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/adapter/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    return-object p0
.end method

.method public static final synthetic access$getSelectGroup$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/publish/api/GroupBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    return-object p0
.end method

.method public static final synthetic access$resetContent(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->resetContent(Z)V

    return-void
.end method

.method public static final synthetic access$searchJob(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    return-void
.end method

.method public static final synthetic access$setMHistoryList$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setMKeyword$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$10$lambda$7$lambda$6(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$19(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method private final clearTipsDialog()V
    .locals 3

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

    sget v1, Lcom/transsion/search/R$drawable;->btn_bg_dialog_edit_selector:I

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    sget v1, Lcom/transsion/search/R$drawable;->btn_bg_dialog_edit_selector:I

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->c(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    sget v1, Lcom/transsion/baseui/R$color;->base_color_black:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->i(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    move-result-object v0

    const-string v1, "clear_tips"

    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$5$lambda$2(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    return-void
.end method

.method public static synthetic e0()Lcom/transsion/search/dialog/CheckTipsDialog;
    .locals 1

    invoke-static {}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mCheckTipsDialog_delegate$lambda$0()Lcom/transsion/search/dialog/CheckTipsDialog;

    move-result-object v0

    return-object v0
.end method

.method private final emptyView()Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/search/R$layout;->view_search_manager_empty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/search/R$id;->tv_empty_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/transsion/search/R$id;->iv_tips:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/transsion/search/R$id;->tv_retry:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v5, Lnh/m;->a:Lnh/m;

    invoke-virtual {v5}, Lnh/m;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v5

    check-cast v5, Lrq/d;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/transsion/search/R$string;->user_works_empty:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/tn/lib/widget/R$mipmap;->ic_no_content:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/baseui/R$string;->base_net_err:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget v1, Lcom/tn/lib/widget/R$mipmap;->ic_no_network:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/transsion/search/fragment/group/d;

    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/d;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final emptyView$lambda$29(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$5$lambda$4(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$17(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method private final getMCheckTipsDialog()Lcom/transsion/search/dialog/CheckTipsDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mCheckTipsDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/search/dialog/CheckTipsDialog;

    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$10$lambda$7(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchWorkEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel$lambda$28$lambda$26(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchWorkEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final initViewModel()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

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

    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/search/fragment/group/f;

    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/f;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    new-instance v4, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;

    invoke-direct {v4, v3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/search/fragment/group/g;

    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/g;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    new-instance v4, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;

    invoke-direct {v4, v3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/search/fragment/group/h;

    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/h;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    new-instance v4, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;

    invoke-direct {v4, v3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    return-void
.end method

.method private static final initViewModel$lambda$28$lambda$24(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchGroupEntity;)Lkotlin/Unit;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getPager()Lcom/transsion/search/bean/PagerEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/search/bean/PagerEntity;->getHasMore()Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getPager()Lcom/transsion/search/bean/PagerEntity;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/search/bean/PagerEntity;->getNextPage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getPager()Lcom/transsion/search/bean/PagerEntity;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/search/bean/PagerEntity;->getPerPage()I

    move-result v5

    goto :goto_3

    :cond_3
    const/16 v5, 0xa

    :goto_3
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v5

    check-cast v5, Lrq/d;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lrq/d;->f:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_4

    invoke-static {v5}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    iget-object v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v6

    invoke-virtual {v6}, Lr6/f;->s()V

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    iget-object v7, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz v7, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_6
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z1(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v4

    check-cast v4, Lrq/d;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    :cond_8
    instance-of v0, v0, Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_a
    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/transsion/publish/api/GroupBean;

    iget-object v7, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    if-eqz v1, :cond_e

    iput-boolean v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_5

    :cond_e
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lr6/f;->t(Z)V

    :cond_10
    :goto_5
    if-nez v3, :cond_11

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lr6/f;->t(Z)V

    :cond_11
    if-nez p1, :cond_12

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewModel$lambda$28$lambda$26(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchWorkEntity;)Lkotlin/Unit;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/search/bean/Pager;->getHasMore()Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/search/bean/Pager;->getNextPage()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/search/bean/Pager;->getPerPage()I

    move-result v5

    goto :goto_3

    :cond_3
    const/16 v5, 0xa

    :goto_3
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v5

    check-cast v5, Lrq/d;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lrq/d;->f:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_4

    invoke-static {v5}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    iget-object v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v6

    invoke-virtual {v6}, Lr6/f;->s()V

    iget-object v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v0

    :goto_4
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_6
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    if-eq v6, v4, :cond_7

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/transsion/search/bean/Pager;->getPage()I

    move-result v6

    if-ne v6, v4, :cond_9

    :cond_7
    iget-object v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v6, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z1(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v6

    check-cast v6, Lrq/d;

    if-eqz v6, :cond_a

    iget-object v6, v6, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    :cond_a
    instance-of v0, v0, Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_c

    iget-object v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_c
    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget-boolean v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v4}, Lhj/b;->k(Z)V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_12

    iget p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_11
    :goto_6
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lr6/f;->t(Z)V

    :cond_12
    :goto_7
    if-nez v3, :cond_13

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lr6/f;->t(Z)V

    :cond_13
    if-nez p1, :cond_14

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewModel$lambda$28$lambda$27(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    if-nez p1, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postFinsh()V

    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postGroup(Lcom/transsion/publish/api/GroupBean;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$5$lambda$2$lambda$1(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel$lambda$28$lambda$27(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$16(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView$lambda$29(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final mCheckTipsDialog_delegate$lambda$0()Lcom/transsion/search/dialog/CheckTipsDialog;
    .locals 1

    sget-object v0, Lcom/transsion/search/dialog/CheckTipsDialog;->g:Lcom/transsion/search/dialog/CheckTipsDialog$a;

    invoke-virtual {v0}, Lcom/transsion/search/dialog/CheckTipsDialog$a;->a()Lcom/transsion/search/dialog/CheckTipsDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$15(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$10$lambda$9(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private static final onViewCreated$lambda$10$lambda$7(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 4

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->C(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/search/fragment/group/a;

    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/a;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onViewCreated$lambda$10$lambda$7$lambda$6(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$10$lambda$9(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/api/GroupBean;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    invoke-virtual {p1}, Lcom/transsion/publish/api/GroupBean;->getGroupId()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1}, Lcom/transsion/publish/api/GroupBean;->getOps()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->reportClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postFinsh()V

    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postGroup(Lcom/transsion/publish/api/GroupBean;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$11(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->clearTipsDialog()V

    return-void
.end method

.method private static final onViewCreated$lambda$14(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/search/R$id;->tv_keyword:I

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrq/d;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lrq/d;->f:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    goto :goto_1

    :cond_5
    iput p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    goto :goto_1

    :cond_6
    iput p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    :goto_1
    sget-object p1, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {p1}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/search/SearchManager;->g(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static final onViewCreated$lambda$15(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lrq/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lrq/d;->j:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$16(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    if-eqz p2, :cond_4

    iget p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p2, "keyword"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private static final onViewCreated$lambda$17(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    return-void
.end method

.method private static final onViewCreated$lambda$18(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->resetContent(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$19(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postFinsh()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$5$lambda$2(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 4

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->D(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/search/fragment/group/i;

    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/i;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onViewCreated$lambda$5$lambda$2$lambda$1(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$5$lambda$4(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    const-string v2, "<unused var>"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "view"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/transsion/search/bean/SearchSubject;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->reportClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v7

    const/16 v13, 0x180

    const/4 v14, 0x0

    const-string v5, "searchpage"

    const-string v6, ""

    const-string v8, "download_subject"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v3 .. v14}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    const-string v1, "/movie/detail"

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v2

    :goto_1
    const-string v3, "subject_type"

    invoke-virtual {v1, v3, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v2, "ops"

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lfp/a;

    invoke-direct {v1}, Lfp/a;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfp/a;->n(Ljava/lang/Integer;)V

    invoke-virtual {v1, v10}, Lfp/a;->s(Lcom/transsion/moviedetailapi/bean/Subject;)V

    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v2

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v3, Lfp/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$18(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method private final postFinsh()V
    .locals 5

    new-instance v0, Lpq/a;

    invoke-direct {v0}, Lpq/a;-><init>()V

    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v1

    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v2, Lpq/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method private final postGroup(Lcom/transsion/publish/api/GroupBean;)V
    .locals 4

    new-instance v0, Lfp/a;

    invoke-direct {v0}, Lfp/a;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfp/a;->n(Ljava/lang/Integer;)V

    invoke-virtual {v0, p1}, Lfp/a;->m(Lcom/transsion/publish/api/GroupBean;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lfp/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$14(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchGroupEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel$lambda$28$lambda$24(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchGroupEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final reportClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "group_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "subject_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sequence"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2

    move-object p3, v1

    :cond_2
    const-string p1, "ops"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "searchresult"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final resetContent(Z)V
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    :cond_1
    iget p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->H0()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz p1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->H0()V

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {v0}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/search/SearchManager;->l()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method private final searchJob()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    const/16 v2, 0x10

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/toast/core/h;->e(I)V

    sget v1, Lcom/transsion/search/R$string;->tips_room:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/toast/core/h;->e(I)V

    sget v1, Lcom/transsion/search/R$string;->tips_movie:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    sget-object v2, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {v2}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/search/SearchManager;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lrq/d;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lrq/d;->b:Landroid/widget/EditText;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    sget-object v2, Lnh/m;->a:Lnh/m;

    invoke-virtual {v2}, Lnh/m;->e()Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_8

    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    if-eq v2, v0, :cond_5

    if-eq v2, v1, :cond_3

    if-eq v2, v3, :cond_5

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lrq/d;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lrq/d;->f:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_9

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lrq/d;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lrq/d;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_a
    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    if-eq v2, v0, :cond_c

    if-eq v2, v1, :cond_b

    if-eq v2, v3, :cond_c

    goto :goto_3

    :cond_b
    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v1, :cond_d

    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/search/viewmodel/SearchViewModel;->C(IILjava/lang/String;)V

    goto :goto_3

    :cond_c
    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v1, :cond_d

    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/search/viewmodel/SearchViewModel;->D(IILjava/lang/String;)V

    :cond_d
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_word"

    iget-object v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string v2, "searchpage"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final showCheckDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->getMCheckTipsDialog()Lcom/transsion/search/dialog/CheckTipsDialog;

    move-result-object v0

    const-string v1, "mCheckTipsDialog"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lrq/d;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lrq/d;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lrq/d;->c(Landroid/view/LayoutInflater;)Lrq/d;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$b;

    invoke-direct {p1, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$b;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->setNetListener(Lnh/n;)V

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "searchpage"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/d;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

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

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {p1}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/search/SearchManager;->j()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p1, p2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    sget v2, Lcom/transsion/search/R$string;->search_hint_input_group:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(I)V

    :cond_2
    new-instance p1, Lcom/transsion/search/fragment/group/adapter/a;

    invoke-direct {p1, v1, p2, v0}, Lcom/transsion/search/fragment/group/adapter/a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v2

    new-instance v3, Lcom/transsion/search/fragment/group/m;

    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/m;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {v2, v3}, Lr6/f;->D(Lp6/f;)V

    new-instance v2, Lcom/transsion/search/fragment/group/n;

    invoke-direct {v2, p0}, Lcom/transsion/search/fragment/group/n;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_8

    new-instance v2, Lfk/a;

    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-direct {v2, v3}, Lfk/a;-><init>(Lr6/f;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/transsion/search/adapter/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v2, v3}, Lcom/transsion/search/adapter/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v2

    new-instance v3, Lcom/transsion/search/fragment/group/j;

    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/j;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {v2, v3}, Lr6/f;->D(Lp6/f;)V

    new-instance v2, Lcom/transsion/search/fragment/group/l;

    invoke-direct {v2, p0, p1}, Lcom/transsion/search/fragment/group/l;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;)V

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_8

    new-instance v2, Lfk/a;

    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-object v3, v0

    :goto_2
    invoke-direct {v2, v3}, Lfk/a;-><init>(Lr6/f;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lrq/d;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    new-instance v2, Lcom/transsion/search/fragment/group/o;

    invoke-direct {v2, p0}, Lcom/transsion/search/fragment/group/o;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    new-instance p1, Lcom/transsion/search/fragment/group/adapter/b;

    invoke-direct {p1, v1, p2, v0}, Lcom/transsion/search/fragment/group/adapter/b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    sget v0, Lcom/transsion/search/R$id;->tv_keyword:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    if-eqz p1, :cond_a

    new-instance v0, Lcom/transsion/search/fragment/group/p;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/p;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lp6/b;)V

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_b

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_c
    sget-object p1, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    invoke-virtual {p1}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    move-result-object p1

    iget v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    new-instance v1, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;

    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/search/SearchManager;->m(ILcom/transsion/search/a;)V

    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_d

    new-instance v0, Lcom/transsion/search/fragment/group/q;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/q;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_e

    new-instance v0, Lcom/transsion/search/fragment/group/r;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/r;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lrq/d;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    new-instance v0, Lcom/transsion/search/fragment/group/b;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/b;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_10

    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_11

    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$c;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_12

    iget-object p1, p1, Lrq/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_12

    new-instance v0, Lcom/transsion/search/fragment/group/c;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/c;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_13

    iget-object p1, p1, Lrq/d;->f:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_13

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_13
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->getMCheckTipsDialog()Lcom/transsion/search/dialog/CheckTipsDialog;

    move-result-object p1

    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/search/dialog/CheckTipsDialog;->s0(Lsq/a;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lrq/d;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    new-instance v0, Lcom/transsion/search/fragment/group/k;

    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/k;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_15
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lrq/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_16

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    :cond_16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1, p2}, Lhj/b;->k(Z)V

    :cond_17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/d;

    if-eqz p1, :cond_18

    iget-object p1, p1, Lrq/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_18

    new-instance p2, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$e;

    invoke-direct {p2, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$e;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_18
    return-void
.end method
