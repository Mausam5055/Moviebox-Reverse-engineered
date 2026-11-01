.class public Lcom/transsion/publish/view/ObservableScrollView;
.super Landroid/widget/ScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/view/ObservableScrollView$a;
    }
.end annotation


# static fields
.field public static final SCROLL_DOWN:I = 0x10

.field public static final SCROLL_UP:I = 0x1


# instance fields
.field private a:Lcom/transsion/publish/view/ObservableScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    const/16 p1, 0x28

    if-le p4, p2, :cond_0

    sub-int p3, p4, p2

    if-le p3, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/publish/view/ObservableScrollView;->a:Lcom/transsion/publish/view/ObservableScrollView$a;

    if-eqz p1, :cond_1

    const/16 p2, 0x10

    invoke-interface {p1, p2}, Lcom/transsion/publish/view/ObservableScrollView$a;->a(I)V

    goto :goto_0

    :cond_0
    if-ge p4, p2, :cond_1

    sub-int/2addr p2, p4

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/publish/view/ObservableScrollView;->a:Lcom/transsion/publish/view/ObservableScrollView$a;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/transsion/publish/view/ObservableScrollView$a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollListener(Lcom/transsion/publish/view/ObservableScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/ObservableScrollView;->a:Lcom/transsion/publish/view/ObservableScrollView$a;

    return-void
.end method
