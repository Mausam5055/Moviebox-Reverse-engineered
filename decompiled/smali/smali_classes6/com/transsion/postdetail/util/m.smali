.class public final Lcom/transsion/postdetail/util/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/util/m$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Lcom/transsion/postdetail/util/m$a;

.field private final d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/util/m$b;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/util/m$b;-><init>(Lcom/transsion/postdetail/util/m;)V

    iput-object v0, p0, Lcom/transsion/postdetail/util/m;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/postdetail/util/m;)Lcom/transsion/postdetail/util/m$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/util/m;->c:Lcom/transsion/postdetail/util/m$a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/postdetail/util/m;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/util/m;->a:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/util/m;->b:I

    return v0
.end method

.method public final d(Landroid/app/Activity;Lcom/transsion/postdetail/util/m$a;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/postdetail/util/m;->c:Lcom/transsion/postdetail/util/m$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/postdetail/util/m;->a:Landroid/view/View;

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/postdetail/util/m;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/postdetail/util/m;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/util/m;->b:I

    return-void
.end method
