.class public final synthetic Lcom/transsion/postdetail/layer/local/m1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/m1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/m1;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/m1;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/m1;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/layer/local/q1$a;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
