.class public final Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\r\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\r\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u000cR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001b\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "idleTrigger",
        "()V",
        "refreshTrigger",
        "secondFloorTrigger",
        "refreshing",
        "Ley/e;",
        "a",
        "Ley/e;",
        "getBinding",
        "()Ley/e;",
        "setBinding",
        "(Ley/e;)V",
        "binding",
        "",
        "b",
        "Z",
        "isAbMode",
        "()Z",
        "setAbMode",
        "(Z)V",
        "wrapperad_psRelease"
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
.field private a:Ley/e;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Ley/e;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ley/e;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->i(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V

    return-void
.end method

.method private static final i(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    invoke-virtual {p0}, Ley/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method


# virtual methods
.method public final getBinding()Ley/e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    return-object v0
.end method

.method public final idleTrigger()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->d:Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "Pull to refresh"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/wrapperad/R$drawable;->ic_loading_white:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final isAbMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    return v0
.end method

.method public final refreshTrigger()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->d:Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "Release to refresh or keep pulling"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/wrapperad/R$drawable;->ic_loading_white:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final refreshing()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->d:Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final secondFloorTrigger()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->d:Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    iget-object v0, v0, Ley/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "Release for surprise"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    sget v2, Lcom/transsion/wrapperad/R$drawable;->ic_gift_white:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    invoke-virtual {v0}, Ley/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/wrapperad/view/secondfloor/f;

    invoke-direct {v1, p0}, Lcom/transsion/wrapperad/view/secondfloor/f;-><init>(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAbMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    return-void
.end method

.method public final setBinding(Ley/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Ley/e;

    return-void
.end method
