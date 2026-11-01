.class public final Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;

# interfaces
.implements Lcom/transsion/ad/strategy/r$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;",
        "Lcom/transsion/ad/test/TestBaseActivity;",
        "Lcom/transsion/ad/strategy/r$a;",
        "<init>",
        "()V",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "",
        "isVisible",
        "onVisibilityChanged",
        "(Z)V",
        "Landroid/view/View;",
        "getVisibilityView",
        "()Landroid/view/View;",
        "Lji/c0;",
        "a",
        "Lji/c0;",
        "binding",
        "lib_ad_gpRelease"
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
.field private a:Lji/c0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->U(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->V(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final U(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->a:Lji/c0;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lji/c0;->c:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final V(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->a:Lji/c0;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lji/c0;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "view_measure"

    return-object v0
.end method

.method public getVisibilityThreshold()D
    .locals 2

    invoke-static {p0}, Lcom/transsion/ad/strategy/r$a$a;->a(Lcom/transsion/ad/strategy/r$a;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVisibilityView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->a:Lji/c0;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lji/c0;->b:Landroid/view/View;

    const-string v1, "viewBottom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lji/c0;->c(Landroid/view/LayoutInflater;)Lji/c0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->a:Lji/c0;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lji/c0;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget-object p1, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {p1, p0}, Lcom/transsion/ad/strategy/r;->g(Lcom/transsion/ad/strategy/r$a;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->a:Lji/c0;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lji/c0;->c:Landroid/view/View;

    new-instance v2, Lcom/transsion/ad/test/ad_example/h0;

    invoke-direct {v2, p0}, Lcom/transsion/ad/test/ad_example/h0;-><init>(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;->a:Lji/c0;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lji/c0;->b:Landroid/view/View;

    new-instance v0, Lcom/transsion/ad/test/ad_example/i0;

    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/i0;-><init>(Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/r;->n(Lcom/transsion/ad/strategy/r$a;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/ad/test/TestBaseActivity;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onVisibilityChanged() --> isVisible = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
