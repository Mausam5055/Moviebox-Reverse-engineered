.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->mini_item_bottom_action_sheet_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0O0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0OO:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onBindView(I)V
    .locals 19

    move-object/from16 v8, p0

    move/from16 v0, p1

    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0O0:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v11, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v10

    :goto_1
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_2

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v12, v2

    goto :goto_2

    :cond_2
    move v12, v10

    :goto_2
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_8

    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    if-eqz v12, :cond_3

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    goto :goto_4

    :cond_3
    invoke-static {v0, v11}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0OO:Ljava/lang/String;

    new-instance v6, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;

    invoke-direct {v6, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    const/4 v0, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isURL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ".miniapp.transsion.com"

    const/4 v2, 0x2

    invoke-static {v3, v1, v10, v2, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v13

    new-instance v16, Lcom/cloud/tmc/miniapp/dialog/OooO;

    iget-object v2, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    const/4 v7, 0x0

    move-object/from16 v1, v16

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/dialog/OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_4

    :cond_5
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-processor>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    invoke-interface {v1, v3, v4}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v6, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0OO;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "BottomActionSheetDialog"

    if-eqz v0, :cond_b

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_a
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getDisabledColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getDisabledColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    const/16 v0, 0x11

    if-eqz v12, :cond_d

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_7

    :cond_e
    if-eqz v11, :cond_f

    const v0, 0x800003

    :cond_f
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :goto_7
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO00o()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_9

    :cond_10
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getMaskColor()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#0F191F2B"

    invoke-static {v5, v6}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, -0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :goto_8
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_9
    return-void
.end method
