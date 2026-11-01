.class public final Lcom/cloud/tmc/miniapp/dialog/OooOO0;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/OooOO0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

.field public OooO0oo:Lcom/cloud/tmc/miniapp/dialog/OooOO0O;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO00o:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooOO0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooOO0O;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO0o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0Oo:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO0OO;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o0:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->mini_layout_bottom_action_sheet_dialog:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimAmount(F)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO00o()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final OooO00o(Ljava/util/ArrayList;)Lcom/cloud/tmc/miniapp/dialog/OooOO0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;",
            ">;)",
            "Lcom/cloud/tmc/miniapp/dialog/OooOO0;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", must be between 1 and 10"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BottomActionSheetDialog"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public final OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public final OooO0Oo()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final OooO0o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final OooO0o0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public show()V
    .locals 7

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0Oo()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0Oo()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0Oo()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;

    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;-><init>()V

    const/4 v5, 0x0

    iput v5, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO00o:I

    sget v6, Lcom/cloud/tmc/miniapp/R$color;->mini_color_E4E6EB_pure:I

    invoke-virtual {p0, v6}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v6

    iput v6, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0O0:I

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v6

    iput v6, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0OO:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-static {v6}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v6

    if-ne v6, v1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-static {v6}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v6

    if-ne v6, v1, :cond_b

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_b
    move v6, v5

    :goto_3
    iput-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0o0:Z

    iput-boolean v5, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0Oo:Z

    new-instance v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;

    invoke-direct {v6}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;-><init>()V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "params"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO00o:I

    iput v3, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o0:I

    iget v3, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0O0:I

    iput v3, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o:I

    iget v3, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0OO:I

    iput v3, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    iget-boolean v3, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0o0:Z

    iput-boolean v3, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    iget-boolean v3, v4, Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;->OooO0Oo:Z

    iput-boolean v3, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0oO:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Landroid/graphics/NinePatch;

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0oO:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    :cond_c
    iget v2, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o0:I

    if-nez v2, :cond_d

    iget v2, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    if-nez v2, :cond_d

    iget-object v2, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0oO:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    :cond_d
    iget v2, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o0:I

    if-ne v2, v1, :cond_e

    iget v1, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    if-nez v1, :cond_e

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0oO:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    :cond_e
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v2, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v1, v6, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_f
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    return-void
.end method
