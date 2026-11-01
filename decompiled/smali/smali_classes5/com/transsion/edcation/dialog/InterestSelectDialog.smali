.class public final Lcom/transsion/edcation/dialog/InterestSelectDialog;
.super Lcom/transsion/baseui/dialog/BaseDialogFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseDialogFragment<",
        "Lvk/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001d\u0010\n\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010\'\u001a\u00020!8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/edcation/dialog/InterestSelectDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialogFragment;",
        "Lvk/a;",
        "<init>",
        "()V",
        "",
        "v0",
        "",
        "Lcom/transsion/edcation/bean/InterestBean;",
        "options",
        "s0",
        "(Ljava/util/List;)V",
        "initView",
        "c0",
        "Landroid/view/Window;",
        "window",
        "d0",
        "(Landroid/view/Window;)V",
        "",
        "Z",
        "()Z",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "u0",
        "(Landroid/content/Context;)Landroid/view/View;",
        "Lcom/transsion/edcation/c;",
        "e",
        "Lkotlin/Lazy;",
        "w0",
        "()Lcom/transsion/edcation/c;",
        "mApi",
        "",
        "",
        "f",
        "Ljava/util/List;",
        "selectIds",
        "g",
        "Ljava/lang/String;",
        "TAG",
        "Education_psRelease"
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
.field private final e:Lkotlin/Lazy;

.field private final f:Ljava/util/List;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/transsion/edcation/dialog/InterestSelectDialog$1;->INSTANCE:Lcom/transsion/edcation/dialog/InterestSelectDialog$1;

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Lcom/transsion/edcation/dialog/a;

    invoke-direct {v0}, Lcom/transsion/edcation/dialog/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->e:Lkotlin/Lazy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    const-string v0, "InterestSelectDialog"

    iput-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->g:Ljava/lang/String;

    return-void
.end method

.method private static final A0()Lcom/transsion/edcation/c;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/edcation/c;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/edcation/c;

    return-object v0
.end method

.method public static synthetic i0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->y0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->z0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->x0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0()Lcom/transsion/edcation/c;
    .locals 1

    invoke-static {}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->A0()Lcom/transsion/edcation/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m0(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->t0(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic n0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->s0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic o0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lcom/transsion/edcation/c;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->w0()Lcom/transsion/edcation/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lvk/a;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lvk/a;

    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->g:Ljava/lang/String;

    return-object p0
.end method

.method private final s0(Ljava/util/List;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->a0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lvk/a;

    iget-object v1, v1, Lvk/a;->b:Lcom/tn/lib/view/FlowLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/edcation/bean/InterestBean;

    invoke-virtual {p0, v0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->u0(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/transsion/edcation/R$id;->tvContent:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/transsion/edcation/bean/InterestBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance v3, Lcom/transsion/edcation/dialog/e;

    invoke-direct {v3, v2, p0, v1}, Lcom/transsion/edcation/dialog/e;-><init>(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lvk/a;

    iget-object v1, v1, Lvk/a;->b:Lcom/tn/lib/view/FlowLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/edcation/CourseManager;->t(Z)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v1, "edu_interest_dialog"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private static final t0(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/transsion/edcation/bean/InterestBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/transsion/edcation/bean/InterestBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final v0()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->w0()Lcom/transsion/edcation/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/transsion/edcation/c$a;->a(Lcom/transsion/edcation/c;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsion/edcation/dialog/InterestSelectDialog$a;->a:Lcom/transsion/edcation/dialog/InterestSelectDialog$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->x(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;

    invoke-direct {v1, p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method private final w0()Lcom/transsion/edcation/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/edcation/c;

    return-object v0
.end method

.method private static final x0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/transsion/edcation/dialog/d;

    invoke-direct {p1, p0}, Lcom/transsion/edcation/dialog/d;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p0, v0}, Lcom/transsion/baseui/util/d;->b(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final y0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lkotlin/Unit;
    .locals 6

    iget-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/edcation/R$string;->course_interest_select_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/edcation/dialog/InterestSelectDialog$initView$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/edcation/dialog/InterestSelectDialog$initView$1$1$1;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final z0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method protected Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c0()V
    .locals 0

    return-void
.end method

.method protected d0(Landroid/view/Window;)V
    .locals 3

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->d0(Landroid/view/Window;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lvk/a;

    iget-object v0, v0, Lvk/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsion/edcation/dialog/b;

    invoke-direct {v1, p0}, Lcom/transsion/edcation/dialog/b;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lvk/a;

    iget-object v0, v0, Lvk/a;->e:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsion/edcation/dialog/c;

    invoke-direct {v1, p0}, Lcom/transsion/edcation/dialog/c;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->v0()V

    return-void
.end method

.method public final u0(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/edcation/R$layout;->item_select_interest:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
