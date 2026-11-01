.class public final Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

.field private static b:Landroid/app/Application;

.field private static c:Llt/b;

.field private static d:Llt/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;-><init>()V

    sput-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;Landroid/app/Application;Llt/c;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Llt/c;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a(Landroid/app/Application;Llt/c;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;Llt/c;)V
    .locals 0

    sput-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->b:Landroid/app/Application;

    sget-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Llt/b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;

    invoke-direct {p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->e(Llt/b;)V

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lmt/a;

    invoke-direct {p2}, Lmt/a;-><init>()V

    :cond_1
    sget-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->f(Llt/c;)V

    return-void
.end method

.method public final c(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d(IIIFF)V

    return-void
.end method

.method public final d(IIIFF)V
    .locals 9

    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Llt/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v8, Lmt/b;

    sget-object v2, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Llt/c;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object v1, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lmt/b;-><init>(Llt/c;IIIFF)V

    invoke-interface {v0, v8}, Llt/b;->b(Llt/c;)V

    return-void
.end method

.method public final e(Llt/b;)V
    .locals 1

    sput-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Llt/b;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->b:Landroid/app/Application;

    invoke-interface {p1, v0}, Llt/b;->registerStrategy(Landroid/app/Application;)V

    return-void
.end method

.method public final f(Llt/c;)V
    .locals 1

    sput-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Llt/c;

    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Llt/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Llt/b;->b(Llt/c;)V

    return-void
.end method

.method public final g(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmt/c;

    sget-object v1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Llt/c;

    invoke-direct {v0, p1, v1}, Lmt/c;-><init>(ILlt/c;)V

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->f(Llt/c;)V

    return-void
.end method

.method public final h(I)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->b:Landroid/app/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->i(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->i(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Llt/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Llt/b;->a(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
