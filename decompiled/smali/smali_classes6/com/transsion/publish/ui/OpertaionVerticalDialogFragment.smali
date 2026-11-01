.class public final Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 #2\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "o0",
        "(Landroid/view/View;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "",
        "Lcom/transsion/publish/view/operation/OperationBean;",
        "c",
        "Ljava/util/List;",
        "list",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "d",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rv",
        "Lop/i;",
        "e",
        "Lop/i;",
        "adapter",
        "Lcom/transsion/publish/adapter/a;",
        "f",
        "Lcom/transsion/publish/adapter/a;",
        "listener",
        "g",
        "a",
        "Publish_psRelease"
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
.field public static final g:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$a;


# instance fields
.field private c:Ljava/util/List;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Lop/i;

.field private f:Lcom/transsion/publish/adapter/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->g:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/publish/R$layout;->opertaion_vertical_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic n0(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;)Lcom/transsion/publish/adapter/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->f:Lcom/transsion/publish/adapter/a;

    return-object p0
.end method

.method private final o0(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/transsion/publish/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lop/i;

    invoke-direct {v0}, Lop/i;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->e:Lop/i;

    iget-object v1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lop/i;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->e:Lop/i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->e:Lop/i;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;-><init>(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lop/i;->l(Lop/b;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/publish/R$style;->BottomDialogThemes:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/transsion/publish/R$style;->bottom_dialog_animations:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    :cond_1
    sget-object v3, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    invoke-virtual {v3, p1}, Lcom/transsion/baseui/util/a;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x20

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->o0(Landroid/view/View;)V

    return-void
.end method
