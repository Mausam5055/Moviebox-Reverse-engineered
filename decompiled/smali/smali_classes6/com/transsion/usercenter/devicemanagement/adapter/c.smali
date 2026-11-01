.class public final synthetic Lcom/transsion/usercenter/devicemanagement/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/devicemanagement/adapter/d;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/devicemanagement/adapter/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/devicemanagement/adapter/c;->a:Lcom/transsion/usercenter/devicemanagement/adapter/d;

    iput-object p2, p0, Lcom/transsion/usercenter/devicemanagement/adapter/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/devicemanagement/adapter/c;->a:Lcom/transsion/usercenter/devicemanagement/adapter/d;

    iget-object v1, p0, Lcom/transsion/usercenter/devicemanagement/adapter/c;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/devicemanagement/adapter/d;->B1(Lcom/transsion/usercenter/devicemanagement/adapter/d;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
