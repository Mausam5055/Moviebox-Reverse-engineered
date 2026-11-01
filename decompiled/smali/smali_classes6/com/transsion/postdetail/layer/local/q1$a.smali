.class public final Lcom/transsion/postdetail/layer/local/q1$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/layer/local/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/q1$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/q1$a;->i(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/q1$a;->h(Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/q1$a;->m(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/q1$a;->g(Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/q1$a;->j(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final g(Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/layer/local/q1;->b:Lcom/transsion/postdetail/layer/local/q1$a;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/q1$a;->l(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    sget-object p2, Lcom/transsion/postdetail/layer/local/q1;->b:Lcom/transsion/postdetail/layer/local/q1$a;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/layer/local/q1$a;->l(Landroid/view/View;)V

    new-instance p2, Lcom/transsion/postdetail/layer/local/o1;

    invoke-direct {p2, p1}, Lcom/transsion/postdetail/layer/local/o1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final i(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final j(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final l(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/transsion/postdetail/layer/local/p1;

    invoke-direct {v1, p1}, Lcom/transsion/postdetail/layer/local/p1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static final m(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final f(Lho/j;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/q1$a;->k()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "video_show_guide"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lho/j;->i:Lho/l;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lho/l;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p1, Lho/j;->i:Lho/l;

    iget-object p1, p1, Lho/l;->p:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/transsion/postdetail/layer/local/q1;->b:Lcom/transsion/postdetail/layer/local/q1$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/q1$a;->k()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/transsion/postdetail/layer/local/l1;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/layer/local/l1;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/transsion/postdetail/layer/local/m1;

    invoke-direct {v1, p1, v0}, Lcom/transsion/postdetail/layer/local/m1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/transsion/postdetail/layer/local/n1;

    invoke-direct {v1, v0}, Lcom/transsion/postdetail/layer/local/n1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final k()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/q1;->b()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method
