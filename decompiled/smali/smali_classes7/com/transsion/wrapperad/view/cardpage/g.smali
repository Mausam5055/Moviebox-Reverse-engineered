.class public final synthetic Lcom/transsion/wrapperad/view/cardpage/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/g;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/g;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {v0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroid/view/View;F)V

    return-void
.end method
