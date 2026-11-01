.class public Lcom/tn/lib/widget/toast/core/g;
.super Landroid/os/Handler;

# interfaces
.implements Lvh/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/widget/toast/core/g$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/tn/lib/widget/toast/core/g$a;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/tn/lib/widget/toast/core/a;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Lvh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tn/lib/widget/toast/core/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/lib/widget/toast/core/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/lib/widget/toast/core/g;->e:Lcom/tn/lib/widget/toast/core/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final d(Ljava/lang/CharSequence;)I
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public b(Lvh/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lvh/c;

    return-void
.end method

.method public c(Landroid/app/Application;)Lvh/a;
    .locals 3

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->b:Lcom/tn/lib/widget/toast/core/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tn/lib/widget/toast/core/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tn/lib/widget/toast/core/b;

    invoke-direct {v1, v0}, Lcom/tn/lib/widget/toast/core/b;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    new-instance v1, Lcom/tn/lib/widget/toast/core/d;

    invoke-direct {v1, p1}, Lcom/tn/lib/widget/toast/core/d;-><init>(Landroid/app/Application;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tn/lib/widget/toast/core/e;

    invoke-direct {v1, p1}, Lcom/tn/lib/widget/toast/core/e;-><init>(Landroid/app/Application;)V

    :goto_0
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lvh/c;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lvh/c;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v1, p1}, Lvh/a;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lvh/c;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lvh/c;->getGravity()I

    move-result p1

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lvh/c;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lvh/c;->getXOffset()I

    move-result v0

    iget-object v2, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lvh/c;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lvh/c;->getYOffset()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lvh/a;->setGravity(III)V

    iget-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lvh/c;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lvh/c;->getHorizontalMargin()F

    move-result p1

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->d:Lvh/c;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lvh/c;->getVerticalMargin()F

    move-result v0

    invoke-interface {v1, p1, v0}, Lvh/a;->setMargin(FF)V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast v0, Lvh/a;

    invoke-interface {v0}, Lvh/a;->cancel()V

    goto :goto_2

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    return-void

    :cond_4
    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    check-cast v0, Lvh/a;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lvh/a;->cancel()V

    :cond_5
    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/g;->a:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/tn/lib/widget/toast/core/g;->c(Landroid/app/Application;)Lvh/a;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tn/lib/widget/toast/core/g;->c:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/tn/lib/widget/toast/core/g;->d(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {v0, v1}, Lvh/a;->setDuration(I)V

    invoke-interface {v0, p1}, Lvh/a;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lvh/a;->show()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance p1, Lwh/a;

    invoke-direct {p1}, Lwh/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/g;->b(Lvh/c;)V

    :goto_2
    return-void
.end method

.method public registerStrategy(Landroid/app/Application;)V
    .locals 1

    iput-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->a:Landroid/app/Application;

    sget-object v0, Lcom/tn/lib/widget/toast/core/a;->b:Lcom/tn/lib/widget/toast/core/a$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/tn/lib/widget/toast/core/a$a;->a(Landroid/app/Application;)Lcom/tn/lib/widget/toast/core/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/widget/toast/core/g;->b:Lcom/tn/lib/widget/toast/core/a;

    return-void
.end method
