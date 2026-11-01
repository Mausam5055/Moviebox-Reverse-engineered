.class public final Lcom/transsion/postdetail/ui/view/ImmSpeedView;
.super Landroidx/appcompat/widget/AppCompatTextView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001cR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\"\u0010%\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010\'\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010 \u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ImmSpeedView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "pageName",
        "subjectId",
        "",
        "setPageParams",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "ops",
        "setOps",
        "(Ljava/lang/String;)V",
        "",
        "speed",
        "",
        "fromInit",
        "updateSpeed",
        "(FZ)V",
        "a",
        "Ljava/lang/String;",
        "b",
        "c",
        "d",
        "Z",
        "getPkStyle",
        "()Z",
        "setPkStyle",
        "(Z)V",
        "pkStyle",
        "e",
        "isPortrait",
        "setPortrait",
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


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->d()F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    new-instance p1, Lcom/transsion/postdetail/ui/view/b;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/b;-><init>(Lcom/transsion/postdetail/ui/view/ImmSpeedView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->d()F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    new-instance p1, Lcom/transsion/postdetail/ui/view/b;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/b;-><init>(Lcom/transsion/postdetail/ui/view/ImmSpeedView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/d;->d()F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    new-instance p1, Lcom/transsion/postdetail/ui/view/b;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/b;-><init>(Lcom/transsion/postdetail/ui/view/ImmSpeedView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/view/ImmSpeedView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->c(Lcom/transsion/postdetail/ui/view/ImmSpeedView;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/transsion/postdetail/ui/view/ImmSpeedView;Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lhj/i;->a:Lhj/i;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "module_name"

    const-string v3, "speed"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v3, "subject_id"

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string v4, "type"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-static {v4}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    new-instance p1, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;

    invoke-direct {p1}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;-><init>()V

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->e:Z

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->q0(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SpeedConfigDialog"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic updateSpeed$default(Lcom/transsion/postdetail/ui/view/ImmSpeedView;FZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    return-void
.end method


# virtual methods
.method public final getPkStyle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return v0
.end method

.method public final isPortrait()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->e:Z

    return v0
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->c:Ljava/lang/String;

    return-void
.end method

.method public final setPageParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->b:Ljava/lang/String;

    return-void
.end method

.method public final setPkStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    return-void
.end method

.method public final setPortrait(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->e:Z

    return-void
.end method

.method public final updateSpeed(FZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->d:Z

    if-nez v2, :cond_0

    sget v2, Lcom/transsion/postdetail/R$drawable;->ic_player_speed:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    float-to-int v2, p1

    int-to-float v3, v2

    cmpg-float v3, v3, p1

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%sx"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    sget-object v2, Lhj/i;->a:Lhj/i;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "module_name"

    const-string v5, "speed"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string v5, "subject_id"

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    const-string v6, "ops"

    iget-object v7, p0, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    const-string v7, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x4

    new-array p1, p1, [Lkotlin/Pair;

    aput-object v3, p1, v0

    aput-object v4, p1, v1

    const/4 v0, 0x2

    aput-object v5, p1, v0

    const/4 v0, 0x3

    aput-object v6, p1, v0

    invoke-static {p1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method
