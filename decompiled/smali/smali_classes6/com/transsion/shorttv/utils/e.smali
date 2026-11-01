.class public final Lcom/transsion/shorttv/utils/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/utils/e$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/shorttv/utils/e$a;

.field private static final d:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/util/List;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/utils/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/utils/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/utils/e;->c:Lcom/transsion/shorttv/utils/e$a;

    new-instance v0, Lcom/transsion/shorttv/utils/d;

    invoke-direct {v0}, Lcom/transsion/shorttv/utils/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/utils/e;->d:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/utils/e;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/shorttv/utils/e;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/utils/e;->g()Lcom/transsion/shorttv/utils/e;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/utils/e;->f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V

    return-void
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/utils/e;->d:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/core/view/d2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    move-result p0

    iput p0, p1, Lcom/transsion/shorttv/utils/e;->b:I

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on get navigation gesture height = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoHelper"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "ImmVideoHelper"

    const-string v8, "is open navigation bar 2"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final g()Lcom/transsion/shorttv/utils/e;
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/utils/e;

    invoke-direct {v0}, Lcom/transsion/shorttv/utils/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/utils/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public final e(Landroidx/fragment/app/FragmentActivity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iput v2, p0, Lcom/transsion/shorttv/utils/e;->b:I

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "ImmVideoHelper"

    const-string v5, "is open navigation bar"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput v2, p0, Lcom/transsion/shorttv/utils/e;->b:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/shorttv/utils/c;

    invoke-direct {v1, p1, p0}, Lcom/transsion/shorttv/utils/c;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
