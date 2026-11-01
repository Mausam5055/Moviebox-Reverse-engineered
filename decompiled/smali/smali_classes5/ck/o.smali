.class public final synthetic Lck/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:F

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/widget/FrameLayout;FLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/o;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    iput-object p2, p0, Lck/o;->b:Landroid/widget/FrameLayout;

    iput p3, p0, Lck/o;->c:F

    iput-object p4, p0, Lck/o;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lck/o;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    iget-object v1, p0, Lck/o;->b:Landroid/widget/FrameLayout;

    iget v2, p0, Lck/o;->c:F

    iget-object v3, p0, Lck/o;->d:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->r0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/widget/FrameLayout;FLandroid/view/View;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
