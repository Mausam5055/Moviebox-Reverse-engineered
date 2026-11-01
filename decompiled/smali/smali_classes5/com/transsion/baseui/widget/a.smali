.class public final synthetic Lcom/transsion/baseui/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/widget/c;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/widget/a;->a:Lcom/transsion/baseui/widget/c;

    iput-object p2, p0, Lcom/transsion/baseui/widget/a;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/widget/a;->a:Lcom/transsion/baseui/widget/c;

    iget-object v1, p0, Lcom/transsion/baseui/widget/a;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/transsion/baseui/widget/c;->a(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method
