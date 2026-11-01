.class public final synthetic Lcom/transsion/baseui/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/util/f;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/util/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/util/e;->a:Lcom/transsion/baseui/util/f;

    iput-object p2, p0, Lcom/transsion/baseui/util/e;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/util/e;->a:Lcom/transsion/baseui/util/f;

    iget-object v1, p0, Lcom/transsion/baseui/util/e;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/transsion/baseui/util/f;->a(Lcom/transsion/baseui/util/f;Landroid/view/View;)V

    return-void
.end method
