.class public final synthetic Llk/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

.field public final synthetic b:Lcom/transsion/bean/HomePopupEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llk/h;->a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    iput-object p2, p0, Llk/h;->b:Lcom/transsion/bean/HomePopupEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llk/h;->a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    iget-object v1, p0, Llk/h;->b:Lcom/transsion/bean/HomePopupEntity;

    invoke-static {v0, v1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V

    return-void
.end method
