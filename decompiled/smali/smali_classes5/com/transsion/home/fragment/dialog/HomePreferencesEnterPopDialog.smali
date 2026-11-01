.class public final Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\n\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR*\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R6\u0010,\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180%\u0012\u0004\u0012\u00020\u0006\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Lcom/noober/background/view/BLTextView;",
        "button",
        "",
        "w0",
        "(Lcom/noober/background/view/BLTextView;)V",
        "Lcom/transsion/home/bean/HomePreferencesConfig;",
        "config",
        "t0",
        "(Lcom/transsion/home/bean/HomePreferencesConfig;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "c",
        "Lcom/transsion/home/bean/HomePreferencesConfig;",
        "",
        "",
        "d",
        "Ljava/util/Set;",
        "selectedIds",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnSkip",
        "()Lkotlin/jvm/functions/Function0;",
        "v0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSkip",
        "Lkotlin/Function1;",
        "",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "getOnConfirm",
        "()Lkotlin/jvm/functions/Function1;",
        "u0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onConfirm",
        "g",
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
.field public static final g:Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

.field public static final h:I


# instance fields
.field private c:Lcom/transsion/home/bean/HomePreferencesConfig;

.field private final d:Ljava/util/Set;

.field private e:Lkotlin/jvm/functions/Function0;

.field private f:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->g:Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->dialog_home_preferences_enter_pop:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->r0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->s0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->q0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final q0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->w0(Lcom/noober/background/view/BLTextView;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->f:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final s0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->e:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private final w0(Lcom/noober/background/view/BLTextView;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p2, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->c:Lcom/transsion/home/bean/HomePreferencesConfig;

    if-nez p2, :cond_2

    return-void

    :cond_2
    sget v1, Lcom/transsion/home/R$id;->tvTitle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/home/R$id;->tvSubtitle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v1, Lcom/transsion/home/R$id;->btnConfirm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/noober/background/view/BLTextView;

    invoke-direct {p0, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->w0(Lcom/noober/background/view/BLTextView;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getSelectType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/home/bean/HomePreferencesSelectType;->SINGLE:Lcom/transsion/home/bean/HomePreferencesSelectType;

    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesSelectType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Lcom/transsion/home/adapter/preferences/b;

    iget-object v4, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getMaxSelectNum()I

    move-result v5

    new-instance v6, Lcom/transsion/home/fragment/dialog/l;

    invoke-direct {v6, p0, v1}, Lcom/transsion/home/fragment/dialog/l;-><init>(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)V

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/transsion/home/adapter/preferences/b;-><init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getOptions()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p1(Ljava/util/List;)V

    sget p2, Lcom/transsion/home/R$id;->rvTags:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    invoke-virtual {v2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0(I)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance p2, Lcom/transsion/home/fragment/dialog/m;

    invoke-direct {p2, p0}, Lcom/transsion/home/fragment/dialog/m;-><init>(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/home/R$id;->btnSkip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/home/fragment/dialog/n;

    invoke-direct {p2, p0}, Lcom/transsion/home/fragment/dialog/n;-><init>(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final t0(Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->c:Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final u0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final v0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method
