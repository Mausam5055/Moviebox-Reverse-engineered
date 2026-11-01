.class public final synthetic Lcom/transsion/photoview/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/photoview/n;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/photoview/n;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/photoview/m;->a:Lcom/transsion/photoview/n;

    iput-object p2, p0, Lcom/transsion/photoview/m;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/photoview/m;->a:Lcom/transsion/photoview/n;

    iget-object v1, p0, Lcom/transsion/photoview/m;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/transsion/photoview/n;->b(Lcom/transsion/photoview/n;Landroid/widget/ImageView;)V

    return-void
.end method
