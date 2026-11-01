.class public final Lcom/tn/lib/view/RoundedLinearLayout$a;
.super Landroid/view/ViewOutlineProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/RoundedLinearLayout;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/lib/view/RoundedLinearLayout;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/RoundedLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/RoundedLinearLayout$a;->a:Lcom/tn/lib/view/RoundedLinearLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object p1, p0, Lcom/tn/lib/view/RoundedLinearLayout$a;->a:Lcom/tn/lib/view/RoundedLinearLayout;

    invoke-static {p1}, Lcom/tn/lib/view/RoundedLinearLayout;->access$getCornerRadii$p(Lcom/tn/lib/view/RoundedLinearLayout;)[F

    move-result-object p1

    const/4 v0, 0x0

    aget v6, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
