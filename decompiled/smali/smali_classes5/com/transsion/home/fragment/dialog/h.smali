.class public final synthetic Lcom/transsion/home/fragment/dialog/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/dialog/GradeSelectDialog$b;

.field public final synthetic b:Lcom/transsion/home/bean/GradeItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/dialog/GradeSelectDialog$b;Lcom/transsion/home/bean/GradeItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/h;->a:Lcom/transsion/home/fragment/dialog/GradeSelectDialog$b;

    iput-object p2, p0, Lcom/transsion/home/fragment/dialog/h;->b:Lcom/transsion/home/bean/GradeItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/h;->a:Lcom/transsion/home/fragment/dialog/GradeSelectDialog$b;

    iget-object v1, p0, Lcom/transsion/home/fragment/dialog/h;->b:Lcom/transsion/home/bean/GradeItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/dialog/GradeSelectDialog$b;->B1(Lcom/transsion/home/fragment/dialog/GradeSelectDialog$b;Lcom/transsion/home/bean/GradeItem;Landroid/view/View;)V

    return-void
.end method
