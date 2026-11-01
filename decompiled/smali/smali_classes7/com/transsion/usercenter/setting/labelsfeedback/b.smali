.class public final synthetic Lcom/transsion/usercenter/setting/labelsfeedback/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/usercenter/setting/labelsfeedback/c;


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/usercenter/setting/labelsfeedback/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/b;->a:I

    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/b;->b:Lcom/transsion/usercenter/setting/labelsfeedback/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/b;->a:I

    iget-object v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/b;->b:Lcom/transsion/usercenter/setting/labelsfeedback/c;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/c;->g(ILcom/transsion/usercenter/setting/labelsfeedback/c;Landroid/view/View;)V

    return-void
.end method
