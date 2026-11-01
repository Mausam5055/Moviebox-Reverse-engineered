.class public final synthetic Lcom/transsion/shorttv/base/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/base/widget/c;->a:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/c;->a:Landroid/view/View$OnClickListener;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/base/widget/DefaultView;->d(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
