.class public final Lcom/transsnet/downloader/popup/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/popup/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/popup/q;

    invoke-direct {v0}, Lcom/transsnet/downloader/popup/q;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/popup/q;->a:Lcom/transsnet/downloader/popup/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)[I
    .locals 7

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/4 v6, 0x1

    aget v0, v0, v6

    sub-int/2addr v2, v0

    sub-int/2addr v2, p1

    if-ge v2, v5, :cond_0

    sub-int/2addr v3, p2

    aput v3, v1, v4

    sub-int/2addr v0, v5

    aput v0, v1, v6

    goto :goto_0

    :cond_0
    sub-int/2addr v3, p2

    aput v3, v1, v4

    add-int/2addr v0, p1

    aput v0, v1, v6

    :goto_0
    return-object v1
.end method
