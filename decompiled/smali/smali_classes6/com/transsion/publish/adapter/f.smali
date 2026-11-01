.class public final synthetic Lcom/transsion/publish/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/adapter/c;

.field public final synthetic b:Lcom/transsion/publish/adapter/g;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/f;->a:Lcom/transsion/publish/adapter/c;

    iput-object p2, p0, Lcom/transsion/publish/adapter/f;->b:Lcom/transsion/publish/adapter/g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/adapter/f;->a:Lcom/transsion/publish/adapter/c;

    iget-object v1, p0, Lcom/transsion/publish/adapter/f;->b:Lcom/transsion/publish/adapter/g;

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/adapter/g;->i(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;Landroid/view/View;)V

    return-void
.end method
