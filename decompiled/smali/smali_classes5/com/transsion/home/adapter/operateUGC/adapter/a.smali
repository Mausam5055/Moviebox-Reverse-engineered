.class public final synthetic Lcom/transsion/home/adapter/operateUGC/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/BannerData;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/a;->a:Lcom/transsion/home/bean/BannerData;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/a;->b:Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;

    iput p3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/a;->a:Lcom/transsion/home/bean/BannerData;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/a;->b:Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;

    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/a;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->g(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;ILandroid/view/View;)V

    return-void
.end method
