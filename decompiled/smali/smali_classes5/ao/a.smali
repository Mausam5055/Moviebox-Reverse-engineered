.class public final synthetic Lao/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/player/DashDemoActivity;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/DashDemoActivity;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao/a;->a:Lcom/transsion/player/DashDemoActivity;

    iput-object p2, p0, Lao/a;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lao/a;->a:Lcom/transsion/player/DashDemoActivity;

    iget-object v1, p0, Lao/a;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/transsion/player/DashDemoActivity;->U(Lcom/transsion/player/DashDemoActivity;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
