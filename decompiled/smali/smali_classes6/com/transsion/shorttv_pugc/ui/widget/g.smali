.class public final synthetic Lcom/transsion/shorttv_pugc/ui/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/bean/ShortTVItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/g;->a:Lcom/transsion/shorttv_pugc/bean/ShortTVItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/g;->a:Lcom/transsion/shorttv_pugc/bean/ShortTVItem;

    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvAdView;->a(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;Landroid/view/View;)V

    return-void
.end method
