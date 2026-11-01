.class public final synthetic Lcom/transsion/postdetail/ui/dialog/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/dialog/h;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/postdetail/bean/NegativeFeedbackAction;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/dialog/h;ILcom/transsion/postdetail/bean/NegativeFeedbackAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/dialog/e;->a:Lcom/transsion/postdetail/ui/dialog/h;

    iput p2, p0, Lcom/transsion/postdetail/ui/dialog/e;->b:I

    iput-object p3, p0, Lcom/transsion/postdetail/ui/dialog/e;->c:Lcom/transsion/postdetail/bean/NegativeFeedbackAction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/e;->a:Lcom/transsion/postdetail/ui/dialog/h;

    iget v1, p0, Lcom/transsion/postdetail/ui/dialog/e;->b:I

    iget-object v2, p0, Lcom/transsion/postdetail/ui/dialog/e;->c:Lcom/transsion/postdetail/bean/NegativeFeedbackAction;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/ui/dialog/h;->g(Lcom/transsion/postdetail/ui/dialog/h;ILcom/transsion/postdetail/bean/NegativeFeedbackAction;Landroid/view/View;)V

    return-void
.end method
