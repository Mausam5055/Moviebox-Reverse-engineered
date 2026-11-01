.class public final Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\"\u0010 \u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00040$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R0\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020)0(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020)`*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00100\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "speed",
        "",
        "r0",
        "(F)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/transsion/postdetail/ui/dialog/o;",
        "c",
        "Lkotlin/Lazy;",
        "o0",
        "()Lcom/transsion/postdetail/ui/dialog/o;",
        "speedViewModel",
        "",
        "d",
        "Z",
        "isPortrait",
        "()Z",
        "q0",
        "(Z)V",
        "",
        "e",
        "[Ljava/lang/Float;",
        "speedConfigs",
        "Ljava/util/HashMap;",
        "Lcom/transsion/baseui/widget/GradientTextView;",
        "Lkotlin/collections/HashMap;",
        "f",
        "Ljava/util/HashMap;",
        "itemViewMap",
        "g",
        "F",
        "currentSpeed",
        "PostDetail_psRelease"
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
.field private final c:Lkotlin/Lazy;

.field private d:Z

.field private final e:[Ljava/lang/Float;

.field private final f:Ljava/util/HashMap;

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>()V

    const-class v0, Lcom/transsion/postdetail/ui/dialog/o;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->c:Lkotlin/Lazy;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Float;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    iput-object v6, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->e:[Ljava/lang/Float;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    sget-object v0, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v0}, Lcom/transsion/baselib/helper/d;->d()F

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;FLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->p0(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;FLandroid/view/View;)V

    return-void
.end method

.method private final o0()Lcom/transsion/postdetail/ui/dialog/o;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/ui/dialog/o;

    return-object v0
.end method

.method private static final p0(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;FLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->r0(F)V

    return-void
.end method

.method private final r0(F)V
    .locals 5

    iget v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    cmpg-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    :cond_2
    iput p1, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->o0()Lcom/transsion/postdetail/ui/dialog/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/dialog/o;->c(F)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsnet/downloader/R$style;->DownloadBottomDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/transsion/postdetail/R$layout;->dialog_speed_config:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v2, Lcom/transsion/postdetail/R$id;->ll_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->e:[Ljava/lang/Float;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v9

    new-instance v15, Lcom/transsion/baseui/widget/GradientTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v14, "getContext(...)"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v15

    move-object v5, v14

    move/from16 v14, v16

    move-object v1, v15

    move-object/from16 v15, v17

    invoke-direct/range {v10 .. v15}, Lcom/transsion/baseui/widget/GradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v10, 0x11

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget v10, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    cmpg-float v10, v10, v9

    if-nez v10, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v10

    sget v11, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    invoke-static {v10, v11}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v11

    sget v12, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    invoke-static {v11, v12}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v12

    sget v13, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v10

    sget v11, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v10, v11}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v11

    sget v12, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v11, v12}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v12

    sget v13, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    :goto_1
    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljg/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    float-to-int v5, v9

    int-to-float v10, v5

    cmpg-float v10, v10, v9

    const-string v11, "x"

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/transsion/postdetail/ui/dialog/n;

    invoke-direct {v5, v0, v9}, Lcom/transsion/postdetail/ui/dialog/n;-><init>(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    const/4 v5, -0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->d:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/tn/lib/widget/R$style;->bottom_dialog_animation:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    sget v2, Lcom/tn/lib/widget/R$style;->ActionSheetDialogRight:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/high16 v2, 0x430c0000    # 140.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v1

    sget-object v2, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v1, v2}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :cond_4
    return-void
.end method

.method public final q0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->d:Z

    return-void
.end method
