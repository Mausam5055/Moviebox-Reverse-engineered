.class public final synthetic Lfx/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/version/update/dialog/UpdateDialog;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/version/update/dialog/UpdateDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfx/b;->a:Z

    iput-object p2, p0, Lfx/b;->b:Lcom/transsion/version/update/dialog/UpdateDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lfx/b;->a:Z

    iget-object v1, p0, Lfx/b;->b:Lcom/transsion/version/update/dialog/UpdateDialog;

    invoke-static {v0, v1, p1}, Lcom/transsion/version/update/dialog/UpdateDialog;->o0(ZLcom/transsion/version/update/dialog/UpdateDialog;Landroid/view/View;)V

    return-void
.end method
