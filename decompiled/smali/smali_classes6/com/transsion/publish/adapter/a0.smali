.class public final synthetic Lcom/transsion/publish/adapter/a0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/adapter/b0;

.field public final synthetic b:Lcom/transsion/publish/api/AudioEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/adapter/b0;Lcom/transsion/publish/api/AudioEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/a0;->a:Lcom/transsion/publish/adapter/b0;

    iput-object p2, p0, Lcom/transsion/publish/adapter/a0;->b:Lcom/transsion/publish/api/AudioEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/adapter/a0;->a:Lcom/transsion/publish/adapter/b0;

    iget-object v1, p0, Lcom/transsion/publish/adapter/a0;->b:Lcom/transsion/publish/api/AudioEntity;

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/adapter/b0;->g(Lcom/transsion/publish/adapter/b0;Lcom/transsion/publish/api/AudioEntity;Landroid/view/View;)V

    return-void
.end method
