.class public abstract Lcom/transsion/baseui/util/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/util/f$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/baseui/util/f$a;

.field public static final d:I


# instance fields
.field private a:I

.field private final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baseui/util/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baseui/util/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baseui/util/f;->c:Lcom/transsion/baseui/util/f$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/baseui/util/f;->d:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/baseui/util/f;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/baseui/util/f;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baseui/util/f;->b(Lcom/transsion/baseui/util/f;Landroid/view/View;)V

    return-void
.end method

.method private static final b(Lcom/transsion/baseui/util/f;Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/transsion/baseui/util/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/baseui/util/f;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/baseui/util/f;->c(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/baseui/util/f;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/baseui/util/f;->a:I

    return-void
.end method


# virtual methods
.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/baseui/util/f;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/baseui/util/f;->a:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/baseui/util/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/baseui/util/e;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baseui/util/e;-><init>(Lcom/transsion/baseui/util/f;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
