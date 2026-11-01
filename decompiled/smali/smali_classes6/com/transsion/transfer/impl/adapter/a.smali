.class public final synthetic Lcom/transsion/transfer/impl/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/adapter/b;

.field public final synthetic b:Lcom/transsion/transfer/impl/entity/FileData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/adapter/b;Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/adapter/a;->a:Lcom/transsion/transfer/impl/adapter/b;

    iput-object p2, p0, Lcom/transsion/transfer/impl/adapter/a;->b:Lcom/transsion/transfer/impl/entity/FileData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/impl/adapter/a;->a:Lcom/transsion/transfer/impl/adapter/b;

    iget-object v1, p0, Lcom/transsion/transfer/impl/adapter/a;->b:Lcom/transsion/transfer/impl/entity/FileData;

    invoke-static {v0, v1, p1}, Lcom/transsion/transfer/impl/adapter/b;->B1(Lcom/transsion/transfer/impl/adapter/b;Lcom/transsion/transfer/impl/entity/FileData;Landroid/view/View;)V

    return-void
.end method
