.class public final synthetic Lcom/transsnet/login/email/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lzy/b;


# direct methods
.method public synthetic constructor <init>(Lzy/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/email/f;->a:Lzy/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/f;->a:Lzy/b;

    invoke-static {v0, p1}, Lcom/transsnet/login/email/LoginEmailFragment;->c0(Lzy/b;Landroid/view/View;)V

    return-void
.end method
