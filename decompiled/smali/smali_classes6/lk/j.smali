.class public final synthetic Llk/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

.field public final synthetic b:Lcom/transsion/bean/HomePopupEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llk/j;->a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    iput-object p2, p0, Llk/j;->b:Lcom/transsion/bean/HomePopupEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llk/j;->a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    iget-object v1, p0, Llk/j;->b:Lcom/transsion/bean/HomePopupEntity;

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->c(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;Landroid/view/View;)V

    return-void
.end method
