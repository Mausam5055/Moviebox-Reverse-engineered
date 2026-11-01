.class public final synthetic Lcom/transsion/publish/adapter/d0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/adapter/f0;

.field public final synthetic b:Lcom/transsion/publish/adapter/e0;

.field public final synthetic c:Lcom/transsion/publish/api/PhotoEntity;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/adapter/f0;Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/d0;->a:Lcom/transsion/publish/adapter/f0;

    iput-object p2, p0, Lcom/transsion/publish/adapter/d0;->b:Lcom/transsion/publish/adapter/e0;

    iput-object p3, p0, Lcom/transsion/publish/adapter/d0;->c:Lcom/transsion/publish/api/PhotoEntity;

    iput p4, p0, Lcom/transsion/publish/adapter/d0;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/publish/adapter/d0;->a:Lcom/transsion/publish/adapter/f0;

    iget-object v1, p0, Lcom/transsion/publish/adapter/d0;->b:Lcom/transsion/publish/adapter/e0;

    iget-object v2, p0, Lcom/transsion/publish/adapter/d0;->c:Lcom/transsion/publish/api/PhotoEntity;

    iget v3, p0, Lcom/transsion/publish/adapter/d0;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/publish/adapter/e0;->g(Lcom/transsion/publish/adapter/f0;Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;ILandroid/view/View;)V

    return-void
.end method
