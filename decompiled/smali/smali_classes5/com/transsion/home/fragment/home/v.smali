.class public final Lcom/transsion/home/fragment/home/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/home/v$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/home/fragment/home/v$a;

.field public static final c:I


# instance fields
.field private final a:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/fragment/home/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/home/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/fragment/home/v;->b:Lcom/transsion/home/fragment/home/v$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/home/v;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "ivNovelIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/home/v;->c(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V

    return-void
.end method

.method private final b()V
    .locals 5

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_novel_icon_config"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    const-class v0, Lcom/transsion/home/fragment/home/HomeNovelIconBean;

    invoke-static {v4, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/fragment/home/HomeNovelIconBean;

    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/HomeNovelIconBean;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/HomeNovelIconBean;->getIcUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lej/f;->a:Lej/f$a;

    iget-object v3, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-virtual {v1, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->d()V

    iget-object v1, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/home/fragment/home/u;

    invoke-direct {v2, p0, v0}, Lcom/transsion/home/fragment/home/u;-><init>(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->e()V

    invoke-virtual {p1}, Lcom/transsion/home/fragment/home/HomeNovelIconBean;->getDeeplink()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p1}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final d()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "icon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_type"

    const-string v2, "novel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "Trending"

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final e()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "icon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_type"

    const-string v2, "novel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "Trending"

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
