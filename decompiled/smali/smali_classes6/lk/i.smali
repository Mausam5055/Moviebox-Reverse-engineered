.class public final synthetic Llk/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/bean/HomePopupEntity;

.field public final synthetic b:Lcom/transsion/commercialization/dialog/TrendingFloatView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llk/i;->a:Lcom/transsion/bean/HomePopupEntity;

    iput-object p2, p0, Llk/i;->b:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llk/i;->a:Lcom/transsion/bean/HomePopupEntity;

    iget-object v1, p0, Llk/i;->b:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->b(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;Landroid/view/View;)V

    return-void
.end method
