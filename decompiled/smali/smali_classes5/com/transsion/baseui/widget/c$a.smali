.class public final Lcom/transsion/baseui/widget/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/widget/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/c;

.field final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/c$a;->a:Lcom/transsion/baseui/widget/c;

    iput-object p2, p0, Lcom/transsion/baseui/widget/c$a;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baseui/widget/c$a;->b(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V

    return-void
.end method

.method private static final b(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/baseui/widget/c;->e(Lcom/transsion/baseui/widget/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcom/transsion/baseui/widget/c;->f(Lcom/transsion/baseui/widget/c;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/baseui/widget/c;->b(Lcom/transsion/baseui/widget/c;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3
    invoke-static {p0, v1}, Lcom/transsion/baseui/widget/c;->f(Lcom/transsion/baseui/widget/c;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/baseui/widget/c$a;->a:Lcom/transsion/baseui/widget/c;

    invoke-static {p1}, Lcom/transsion/baseui/widget/c;->e(Lcom/transsion/baseui/widget/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/baseui/widget/c$a;->a:Lcom/transsion/baseui/widget/c;

    invoke-static {p1}, Lcom/transsion/baseui/widget/c;->d(Lcom/transsion/baseui/widget/c;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/baseui/widget/c$a;->a:Lcom/transsion/baseui/widget/c;

    invoke-static {v0}, Lcom/transsion/baseui/widget/c;->c(Lcom/transsion/baseui/widget/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/baseui/widget/c$a;->a:Lcom/transsion/baseui/widget/c;

    iget-object v0, p0, Lcom/transsion/baseui/widget/c$a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/baseui/widget/b;

    invoke-direct {v1, p1, v0}, Lcom/transsion/baseui/widget/b;-><init>(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V

    invoke-static {p1, v1}, Lcom/transsion/baseui/widget/c;->f(Lcom/transsion/baseui/widget/c;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/baseui/widget/c$a;->a:Lcom/transsion/baseui/widget/c;

    invoke-static {p1}, Lcom/transsion/baseui/widget/c;->c(Lcom/transsion/baseui/widget/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/baseui/widget/c$a;->a:Lcom/transsion/baseui/widget/c;

    invoke-static {v0}, Lcom/transsion/baseui/widget/c;->d(Lcom/transsion/baseui/widget/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    const-string p3, "who"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "what"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "what"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
