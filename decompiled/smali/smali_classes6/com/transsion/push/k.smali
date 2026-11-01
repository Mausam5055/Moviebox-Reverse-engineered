.class public final synthetic Lcom/transsion/push/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/push/PushTestActivity;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/push/k;->a:Lcom/transsion/push/PushTestActivity;

    iput-object p2, p0, Lcom/transsion/push/k;->b:Landroidx/appcompat/widget/AppCompatButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/push/k;->a:Lcom/transsion/push/PushTestActivity;

    iget-object v1, p0, Lcom/transsion/push/k;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1, p1}, Lcom/transsion/push/PushTestActivity;->a0(Lcom/transsion/push/PushTestActivity;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V

    return-void
.end method
