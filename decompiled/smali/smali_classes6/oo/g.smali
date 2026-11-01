.class public final Loo/g;
.super Landroid/view/OrientationEventListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Loo/g;->a:Landroid/app/Activity;

    iput-object p2, p0, Loo/g;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final a(Landroid/app/Activity;)I
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    return p1
.end method

.method private final b(I)V
    .locals 1

    iget v0, p0, Loo/g;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Loo/g;->c:I

    iget-object v0, p0, Loo/g;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/16 v0, 0x47

    if-gt v0, p1, :cond_1

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_1

    iget p1, p0, Loo/g;->c:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Loo/g;->a:Landroid/app/Activity;

    invoke-direct {p0, p1}, Loo/g;->a(Landroid/app/Activity;)I

    move-result p1

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v0}, Loo/g;->b(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xfb

    if-gt v0, p1, :cond_3

    const/16 v0, 0x122

    if-ge p1, v0, :cond_3

    iget p1, p0, Loo/g;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Loo/g;->a:Landroid/app/Activity;

    invoke-direct {p0, p1}, Loo/g;->a(Landroid/app/Activity;)I

    move-result p1

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v0}, Loo/g;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method
