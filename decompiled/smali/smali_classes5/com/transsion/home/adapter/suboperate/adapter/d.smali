.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/adapter/e;

.field public final synthetic b:Lcom/transsion/home/bean/AppointSubject;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/adapter/e;Lcom/transsion/home/bean/AppointSubject;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->a:Lcom/transsion/home/adapter/suboperate/adapter/e;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->b:Lcom/transsion/home/bean/AppointSubject;

    iput p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->c:I

    iput-boolean p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->a:Lcom/transsion/home/adapter/suboperate/adapter/e;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->b:Lcom/transsion/home/bean/AppointSubject;

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->c:I

    iget-boolean v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/d;->d:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/suboperate/adapter/e;->B1(Lcom/transsion/home/adapter/suboperate/adapter/e;Lcom/transsion/home/bean/AppointSubject;IZLandroid/view/View;)V

    return-void
.end method
