.class public final synthetic Lcom/transsion/postdetail/layer/local/r0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/layer/local/u0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/r0;->a:Lcom/transsion/postdetail/layer/local/u0;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/r0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/r0;->a:Lcom/transsion/postdetail/layer/local/u0;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/r0;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/layer/local/u0;->p3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
