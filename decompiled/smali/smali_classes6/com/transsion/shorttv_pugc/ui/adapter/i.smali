.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/n;

.field public final synthetic b:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/n;Lcom/transsion/shorttv_pugc/bean/AppointSubject;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->a:Lcom/transsion/shorttv_pugc/ui/adapter/n;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->b:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

    iput p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->c:I

    iput-boolean p4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->a:Lcom/transsion/shorttv_pugc/ui/adapter/n;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->b:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

    iget v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->c:I

    iget-boolean v3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/i;->d:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/n;->D1(Lcom/transsion/shorttv_pugc/ui/adapter/n;Lcom/transsion/shorttv_pugc/bean/AppointSubject;IZLandroid/view/View;)V

    return-void
.end method
