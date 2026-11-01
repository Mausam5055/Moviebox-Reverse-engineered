.class public abstract Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/a;",
        ">",
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0005J\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010#\u001a\n \u001e*\u0004\u0018\u00010\u00110\u00118\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0014\u0010&\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010,\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R$\u00100\u001a\u0004\u0018\u00010\u00118\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010 \u001a\u0004\u0008.\u0010\"\"\u0004\u0008/\u0010\u0014\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;",
        "Lg4/a;",
        "T",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "a0",
        "",
        "c0",
        "()Z",
        "",
        "dialogName",
        "e0",
        "(Ljava/lang/String;)V",
        "d0",
        "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "a",
        "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "b0",
        "()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
        "setViewModel",
        "(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V",
        "viewModel",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
        "c",
        "Z",
        "isSmallScreen",
        "",
        "d",
        "I",
        "screenWidth",
        "e",
        "screenHeight",
        "f",
        "getPageName",
        "setPageName",
        "pageName",
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


# instance fields
.field private a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:I

.field private final e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b:Ljava/lang/String;

    sget-object v0, Loh/h;->a:Loh/h;

    invoke-virtual {v0}, Loh/h;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->c:Z

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->d:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->e:I

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method protected final b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    return-object v0
.end method

.method public final c0()Z
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->d:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->e:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d0()V
    .locals 0

    return-void
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dialogName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dialog_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v1, Lhj/i;->a:Lhj/i;

    invoke-virtual {v1, p1, v0}, Lhj/i;->r(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected final getPageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroidx/lifecycle/v0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->a:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "KEY_PAGE_NAME"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method
