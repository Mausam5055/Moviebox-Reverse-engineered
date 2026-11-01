.class public final synthetic Lop/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lop/e;

.field public final synthetic b:Lcom/transsion/publish/view/operation/OperationBean;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lop/e;Lcom/transsion/publish/view/operation/OperationBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lop/d;->a:Lop/e;

    iput-object p2, p0, Lop/d;->b:Lcom/transsion/publish/view/operation/OperationBean;

    iput p3, p0, Lop/d;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lop/d;->a:Lop/e;

    iget-object v1, p0, Lop/d;->b:Lcom/transsion/publish/view/operation/OperationBean;

    iget v2, p0, Lop/d;->c:I

    invoke-static {v0, v1, v2, p1}, Lop/e;->g(Lop/e;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V

    return-void
.end method
