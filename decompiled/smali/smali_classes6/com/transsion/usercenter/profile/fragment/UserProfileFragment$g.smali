.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/lib/view/expand/ExpandView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->initViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->h(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->i(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->j(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->g(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    return-void
.end method

.method private static final g(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->N0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    return-void
.end method

.method private static final h(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->C0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)I

    move-result v0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->D0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->M0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;II)V

    return-void
.end method

.method private static final i(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->N0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    return-void
.end method

.method private static final j(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->C0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)I

    move-result v0

    invoke-static {p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->D0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->M0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/expand/ExpandView;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/q0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfw/q0;->d:Lcom/tn/lib/view/expand/ExpandView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    new-instance v1, Lcom/transsion/usercenter/profile/fragment/r;

    invoke-direct {v1, v0}, Lcom/transsion/usercenter/profile/fragment/r;-><init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/q0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfw/q0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    new-instance v1, Lcom/transsion/usercenter/profile/fragment/s;

    invoke-direct {v1, v0}, Lcom/transsion/usercenter/profile/fragment/s;-><init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public b(Lcom/tn/lib/view/expand/ExpandView;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/q0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfw/q0;->d:Lcom/tn/lib/view/expand/ExpandView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    new-instance v1, Lcom/transsion/usercenter/profile/fragment/t;

    invoke-direct {v1, v0}, Lcom/transsion/usercenter/profile/fragment/t;-><init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/q0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfw/q0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    new-instance v1, Lcom/transsion/usercenter/profile/fragment/u;

    invoke-direct {v1, v0}, Lcom/transsion/usercenter/profile/fragment/u;-><init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
