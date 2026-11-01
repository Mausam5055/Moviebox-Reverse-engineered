.class public final synthetic Llk/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/dialog/TaskCommonDialog;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/dialog/TaskCommonDialog;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llk/g;->a:Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    iput-object p2, p0, Llk/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llk/g;->a:Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    iget-object v1, p0, Llk/g;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/dialog/TaskCommonDialog;->o0(Lcom/transsion/commercialization/dialog/TaskCommonDialog;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
