.class public final Lnt/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkt/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnt/b$a;
    }
.end annotation


# static fields
.field public static final a:Lnt/b$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnt/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnt/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnt/b;->a:Lnt/b$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lnt/a;

    invoke-direct {v1}, Lnt/a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lnt/b;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d()Lnt/b;
    .locals 1

    invoke-static {}, Lnt/b;->g()Lnt/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lnt/b;->b:Lkotlin/Lazy;

    return-object v0
.end method

.method private final f(Ljava/lang/CharSequence;IIIII)V
    .locals 1

    if-eqz p6, :cond_0

    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    invoke-virtual {v0, p6}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->g(I)V

    goto :goto_0

    :cond_0
    sget-object p6, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_base_common_toast_layout:I

    invoke-virtual {p6, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->g(I)V

    :goto_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    sget-object p6, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    invoke-virtual {p6, p3, p4, p5}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c(III)V

    :cond_2
    if-eqz p2, :cond_3

    sget-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->h(I)V

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    invoke-virtual {p2, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->i(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private static final g()Lnt/b;
    .locals 1

    new-instance v0, Lnt/b;

    invoke-direct {v0}, Lnt/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lnt/b;->f(Ljava/lang/CharSequence;IIIII)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lnt/b;->f(Ljava/lang/CharSequence;IIIII)V

    return-void
.end method

.method public c(ILjava/lang/CharSequence;III)V
    .locals 8

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lnt/b;->f(Ljava/lang/CharSequence;IIIII)V

    return-void
.end method
