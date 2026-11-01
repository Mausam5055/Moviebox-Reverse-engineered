.class public final Lcf/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lcf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/o0$a;
    }
.end annotation


# static fields
.field public static final s:Lcf/o0$a;


# instance fields
.field public a:Landroidx/fragment/app/FragmentActivity;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:I

.field public d:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public e:Ljava/util/Set;

.field public f:Ljava/util/Set;

.field public g:Z

.field public h:Z

.field public i:Ljava/util/Set;

.field public j:Ljava/util/Set;

.field public k:Ljava/util/Set;

.field public l:Ljava/util/Set;

.field public m:Ljava/util/Set;

.field public n:Ljava/util/Set;

.field public o:Ljava/util/Set;

.field public p:Lze/c;

.field public q:Lze/b;

.field public r:Lze/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcf/o0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcf/o0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcf/o0;->s:Lcf/o0$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    const-string v0, "normalPermissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialPermissions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcf/o0;->c:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcf/o0;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcf/o0;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcf/o0;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcf/o0;->l:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcf/o0;->m:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcf/o0;->n:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcf/o0;->o:Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcf/o0;->D(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcf/o0;->D(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    iput-object p2, p0, Lcf/o0;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcf/o0;->e:Ljava/util/Set;

    iput-object p4, p0, Lcf/o0;->f:Ljava/util/Set;

    return-void
.end method

.method private final C()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcf/o0;->c:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private static final P(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;
    .locals 7

    if-eqz p5, :cond_0

    new-instance v6, Lcf/m0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcf/m0;-><init>(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;)V

    invoke-virtual {p5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Q(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;Landroid/view/View;)V
    .locals 2

    iget-object p5, p0, Lcf/o0;->r:Lze/a;

    if-eqz p5, :cond_0

    xor-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/permissionx/guolindev/callback/PermissionDialogClickType;->POSITIVE:Lcom/permissionx/guolindev/callback/PermissionDialogClickType;

    invoke-interface {p5, p1, v0, v1}, Lze/a;->a(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    if-eqz p2, :cond_1

    invoke-interface {p3, p4}, Lcf/e;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Lcf/o0;->l(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private static final R(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Lcf/n0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcf/n0;-><init>(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final S(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcf/o0;->r:Lze/a;

    if-eqz p0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object p4, Lcom/permissionx/guolindev/callback/PermissionDialogClickType;->NEGATIVE:Lcom/permissionx/guolindev/callback/PermissionDialogClickType;

    invoke-interface {p0, p1, p2, p4}, Lze/a;->a(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-interface {p3}, Lcf/e;->finish()V

    return-void
.end method

.method private static final T(Lcf/o0;Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p1, Lbf/c;->a:Lbf/c;

    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbf/c;->c(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcf/o0;->d:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    return-void
.end method

.method private final U()V
    .locals 2

    invoke-direct {p0}, Lcf/o0;->q()V

    new-instance v0, Lcf/r0;

    invoke-direct {v0}, Lcf/r0;-><init>()V

    invoke-virtual {p0}, Lcf/o0;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcf/p0;

    invoke-direct {v1, p0}, Lcf/p0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcf/o0;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcf/v0;

    invoke-direct {v1, p0}, Lcf/v0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcf/o0;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcf/w0;

    invoke-direct {v1, p0}, Lcf/w0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcf/o0;->L()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcf/x0;

    invoke-direct {v1, p0}, Lcf/x0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcf/o0;->M()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcf/y0;

    invoke-direct {v1, p0}, Lcf/y0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcf/o0;->H()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcf/s0;

    invoke-direct {v1, p0}, Lcf/s0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcf/o0;->I()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcf/t0;

    invoke-direct {v1, p0}, Lcf/t0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcf/o0;->G()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcf/q0;

    invoke-direct {v1, p0}, Lcf/q0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    goto :goto_0

    :cond_7
    new-instance v1, Lcf/u0;

    invoke-direct {v1, p0}, Lcf/u0;-><init>(Lcf/o0;)V

    invoke-virtual {v0, v1}, Lcf/r0;->a(Lcf/d;)V

    :goto_0
    invoke-virtual {v0}, Lcf/r0;->b()V

    return-void
.end method

.method public static synthetic e(Lcf/o0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcf/o0;->T(Lcf/o0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcf/o0;->R(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcf/o0;->S(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcf/o0;->P(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcf/o0;->Q(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method private final n()Landroidx/fragment/app/FragmentManager;
    .locals 2

    iget-object v0, p0, Lcf/o0;->b:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private final o()Lcom/permissionx/guolindev/request/InvisibleFragment;
    .locals 3

    invoke-direct {p0}, Lcf/o0;->n()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    invoke-direct {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;-><init>()V

    invoke-direct {p0}, Lcf/o0;->n()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/w;->l()V

    :goto_0
    return-object v0
.end method

.method private final q()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcf/o0;->c:I

    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final s()V
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcf/o0;->n()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcf/o0;->n()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/w;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method public A(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->o1(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public B(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->r1(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public final D(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcf/o0;->a:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final E(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->s1(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public final F()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final G()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final H()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final I()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final J()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final K()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.PICTURE_IN_PICTURE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final L()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final M()Z
    .locals 2

    iget-object v0, p0, Lcf/o0;->f:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final N(Lcf/e;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V
    .locals 7

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf/o0;->h:Z

    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->n0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcf/e;->finish()V

    return-void

    :cond_0
    iput-object p3, p0, Lcf/o0;->d:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    new-instance v0, Lcf/j0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcf/j0;-><init>(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->p0(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcf/k0;

    invoke-direct {v0, p0, p3, p2, p1}, Lcf/k0;-><init>(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;)V

    invoke-virtual {p3, v0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->o0(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcf/l0;

    invoke-direct {p1, p0}, Lcf/l0;-><init>(Lcf/o0;)V

    invoke-virtual {p3, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->j0(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object p1, Lbf/c;->a:Lbf/c;

    const-string p2, "permission_rationale_dialog"

    invoke-virtual {p1, p3, p2}, Lbf/c;->b(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final O(Lcf/e;ZLjava/util/List;Lbf/a;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/permissionx/guolindev/dialog/DefaultRationaleDialog;

    invoke-direct {v0}, Lcom/permissionx/guolindev/dialog/DefaultRationaleDialog;-><init>()V

    invoke-virtual {v0, p3, p4}, Lcom/permissionx/guolindev/dialog/DefaultRationaleDialog;->r0(Ljava/util/List;Lbf/a;)V

    invoke-virtual {p0, p1, p2, v0}, Lcf/o0;->N(Lcf/e;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V

    return-void
.end method

.method public a(Lze/c;)V
    .locals 0

    iput-object p1, p0, Lcf/o0;->p:Lze/c;

    invoke-direct {p0}, Lcf/o0;->U()V

    return-void
.end method

.method public bridge synthetic b()Lcf/h;
    .locals 1

    invoke-virtual {p0}, Lcf/o0;->k()Lcf/o0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lze/b;)Lcf/h;
    .locals 0

    invoke-virtual {p0, p1}, Lcf/o0;->r(Lze/b;)Lcf/o0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lze/a;)Lcf/h;
    .locals 0

    iput-object p1, p0, Lcf/o0;->r:Lze/a;

    return-object p0
.end method

.method public final j()V
    .locals 0

    invoke-direct {p0}, Lcf/o0;->s()V

    invoke-direct {p0}, Lcf/o0;->C()V

    return-void
.end method

.method public k()Lcf/o0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf/o0;->g:Z

    return-object p0
.end method

.method public final l(Ljava/util/List;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcf/o0;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcf/o0;->o:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->x0()V

    return-void
.end method

.method public final m()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcf/o0;->a:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()I
    .locals 1

    invoke-virtual {p0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public r(Lze/b;)Lcf/o0;
    .locals 0

    iput-object p1, p0, Lcf/o0;->q:Lze/b;

    return-object p0
.end method

.method public t(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->R0(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public u(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->W0(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public v(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->Z0(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public w(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->c1(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public x(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->h1(Lcf/o0;Lcf/e;)V

    return-void
.end method

.method public final y(Ljava/util/Set;Lcf/e;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->i1(Lcf/o0;Ljava/util/Set;Lcf/e;)V

    return-void
.end method

.method public z(Lcf/e;)V
    .locals 1

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->l1(Lcf/o0;Lcf/e;)V

    return-void
.end method
