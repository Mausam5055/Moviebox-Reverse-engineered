.class public final Lf7/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/d$a;
    }
.end annotation


# static fields
.field public static final g:Lf7/d$a;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/widget/PopupWindow;

.field private c:Lf7/f;

.field private d:Lf7/f;

.field private final e:Ljava/util/ArrayList;

.field private f:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf7/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf7/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lf7/d;->g:Lf7/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/d;->a:Landroid/view/View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf7/d;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lf7/d;)V
    .locals 0

    invoke-static {p0}, Lf7/d;->l(Lf7/d;)V

    return-void
.end method

.method public static synthetic b(Lf7/d;Lf7/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf7/d;->e(Lf7/d;Lf7/e;Landroid/view/View;)V

    return-void
.end method

.method private final c(Lf7/e;)Lf7/d;
    .locals 1

    iget-object v0, p0, Lf7/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf7/d;->e:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lf7/d;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private final d(Landroid/widget/Button;Lf7/e;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lf7/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lf7/e;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lf7/e;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Lf7/c;

    invoke-direct {v0, p0, p2}, Lf7/c;-><init>(Lf7/d;Lf7/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final e(Lf7/d;Lf7/e;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$buttonInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf7/d;->f()V

    invoke-virtual {p1}, Lf7/e;->a()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lf7/e;->e(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final g()V
    .locals 0

    invoke-virtual {p0}, Lf7/d;->f()V

    return-void
.end method

.method private static final l(Lf7/d;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf7/d;->f:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lf7/d;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lf7/d;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lf7/d;->b:Landroid/widget/PopupWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final h(Ljava/lang/String;)Lf7/d;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf7/f;->d:Lf7/f$a;

    invoke-virtual {v0, p1}, Lf7/f$a;->a(Ljava/lang/String;)Lf7/f;

    move-result-object p1

    iput-object p1, p0, Lf7/d;->d:Lf7/f;

    return-object p0
.end method

.method public final i(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lf7/d;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf7/e;->e:Lf7/e$a;

    invoke-virtual {v0, p1, p2}, Lf7/e$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lf7/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lf7/d;->c(Lf7/e;)Lf7/d;

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lf7/d;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf7/f;->d:Lf7/f$a;

    invoke-virtual {v0, p1}, Lf7/f$a;->b(Ljava/lang/String;)Lf7/f;

    move-result-object p1

    iput-object p1, p0, Lf7/d;->c:Lf7/f;

    return-object p0
.end method

.method public final k()V
    .locals 8

    iget-object v0, p0, Lf7/d;->c:Lf7/f;

    const-string v1, "CustomDialog"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf7/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf7/d;->d:Lf7/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf7/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf7/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "Custom dialog show failed, title and message and buttons is all empty."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lf7/d;->g()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/cloud/hisavana/sdk/R$layout;->hs_custom_dialog_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v2, "inflate(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "#33000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lf7/d;->b:Landroid/widget/PopupWindow;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->dialog_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lf7/d;->c:Lf7/f;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lf7/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lf7/f;->c()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3}, Lf7/f;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->dialog_message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v3, p0, Lf7/d;->d:Lf7/f;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lf7/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lf7/f;->c()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3}, Lf7/f;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v3

    goto :goto_1

    :cond_3
    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxHeight(I)V

    :cond_4
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->dialog_button1:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->dialog_button2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->separator_v:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lf7/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eqz v4, :cond_8

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lf7/d;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf7/e;

    invoke-direct {p0, v2, v4}, Lf7/d;->d(Landroid/widget/Button;Lf7/e;)V

    iget-object v2, p0, Lf7/d;->e:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v7, :cond_b

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lf7/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "get(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lf7/e;

    invoke-direct {p0, v3, v0}, Lf7/d;->d(Landroid/widget/Button;Lf7/e;)V

    :goto_5
    iget-object v0, p0, Lf7/d;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Landroidx/appcompat/R$style;->Animation_AppCompat_Dialog:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_c

    invoke-static {v0, v7}, Lf7/a;->a(Landroid/widget/PopupWindow;Z)V

    :cond_c
    new-instance v2, Lf7/b;

    invoke-direct {v2, p0}, Lf7/b;-><init>(Lf7/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v2, p0, Lf7/d;->a:Landroid/view/View;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show custom dialog failed, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_7
    return-void
.end method
