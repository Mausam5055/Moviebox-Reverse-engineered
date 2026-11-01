.class public final synthetic Lcom/transsion/publish/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/adapter/g;

.field public final synthetic b:Lcom/transsion/publish/api/PhotoEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/e;->a:Lcom/transsion/publish/adapter/g;

    iput-object p2, p0, Lcom/transsion/publish/adapter/e;->b:Lcom/transsion/publish/api/PhotoEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/adapter/e;->a:Lcom/transsion/publish/adapter/g;

    iget-object v1, p0, Lcom/transsion/publish/adapter/e;->b:Lcom/transsion/publish/api/PhotoEntity;

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/adapter/g;->g(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;Landroid/view/View;)V

    return-void
.end method
