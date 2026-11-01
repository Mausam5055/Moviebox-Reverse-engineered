.class public final synthetic Lcom/transsion/publish/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/adapter/g;

.field public final synthetic b:Lcom/transsion/publish/adapter/c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/d;->a:Lcom/transsion/publish/adapter/g;

    iput-object p2, p0, Lcom/transsion/publish/adapter/d;->b:Lcom/transsion/publish/adapter/c;

    iput p3, p0, Lcom/transsion/publish/adapter/d;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/adapter/d;->a:Lcom/transsion/publish/adapter/g;

    iget-object v1, p0, Lcom/transsion/publish/adapter/d;->b:Lcom/transsion/publish/adapter/c;

    iget v2, p0, Lcom/transsion/publish/adapter/d;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/publish/adapter/g;->h(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;ILandroid/view/View;)V

    return-void
.end method
