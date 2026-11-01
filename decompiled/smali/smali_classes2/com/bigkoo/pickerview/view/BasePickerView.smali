.class public abstract Lcom/bigkoo/pickerview/view/BasePickerView;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field protected e:Lp5/a;

.field private f:Z

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Z

.field protected j:I

.field private k:Landroid/app/Dialog;

.field protected l:Landroid/view/View;

.field private m:Z

.field private n:Landroid/view/View$OnKeyListener;

.field private final o:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->m:Z

    new-instance v0, Lcom/bigkoo/pickerview/view/BasePickerView$c;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$c;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->n:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/bigkoo/pickerview/view/BasePickerView$d;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$d;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->o:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic a(Lcom/bigkoo/pickerview/view/BasePickerView;)Lq5/b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->f:Z

    return-void
.end method

.method static bridge synthetic d(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->i:Z

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private i()Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->j:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr5/c;->a(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "qemu.hw.mainkeys"

    aput-object v4, v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :catchall_0
    return-object v2
.end method

.method public static k(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private l()Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->j:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr5/c;->a(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    const-string v2, "android"

    const-string v3, "config_showNavigationBar"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {}, Lcom/bigkoo/pickerview/view/BasePickerView;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    return v2

    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method private r(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->m:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->h:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    sget v2, Lcom/bigkoo/pickerview/R$style;->custom_dialog2:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-boolean v1, v1, Lp5/a;->U:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/bigkoo/pickerview/R$style;->picker_view_scale_anim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$e;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$e;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->g()V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->f:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$b;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$b;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->h()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->f:Z

    :goto_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v0, v0, Lp5/a;->A:Landroid/view/ViewGroup;

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$3;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$3;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected n()V
    .locals 1

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->i()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->h:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->l()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->g:Landroid/view/animation/Animation;

    return-void
.end method

.method protected o()V
    .locals 6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget v2, Lcom/bigkoo/pickerview/R$layout;->layout_basepickerview:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    sget v2, Lcom/bigkoo/pickerview/R$id;->content_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    const/16 v2, 0x1e

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->e()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$a;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$a;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v5, v2, Lp5/a;->A:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v2, Lp5/a;->A:Landroid/view/ViewGroup;

    :cond_1
    sget v2, Lcom/bigkoo/pickerview/R$layout;->layout_basepickerview:I

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v5, v5, Lp5/a;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/BasePickerView;->k(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget v1, v1, Lp5/a;->R:I

    if-eq v1, v3, :cond_2

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    sget v2, Lcom/bigkoo/pickerview/R$id;->content_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->t(Z)V

    return-void
.end method

.method public abstract p()Z
.end method

.method public q()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->i:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-boolean v1, v1, Lp5/a;->U:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->n:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_1
    return-void
.end method

.method protected u(Z)Lcom/bigkoo/pickerview/view/BasePickerView;
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sget v1, Lcom/bigkoo/pickerview/R$id;->outmost_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->o:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public v()V
    .locals 1

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->w()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->i:Z

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->r(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void
.end method
