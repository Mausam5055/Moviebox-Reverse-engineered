.class public final Lcom/cloud/tmc/miniapp/dialog/o00Ooo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o00Ooo;",
        ">;",
        "Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field public OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo000o;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/o00Ooo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0O0:Lkotlin/Lazy;

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->layout_image_album_dialog:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_BOTTOM()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/o00O0O;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO00o()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo000o;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    invoke-interface {v0, v1, p1, v2}, Lcom/cloud/tmc/miniapp/dialog/oo000o;->onSelected(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;ILcom/cloud/tmc/miniapp/dialog/o00Oo0;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    return-void
.end method


# virtual methods
.method public final OooO00o()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public createDialog(Landroid/content/Context;I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P0(I)V

    return-object v0
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    iget-boolean v0, p2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/k;

    invoke-direct {p1, p0, p3}, Lcom/cloud/tmc/miniapp/dialog/k;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;I)V

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
