.class Lcom/transsion/http/impl/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transsion/http/impl/l;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/j;->b:Lcom/transsion/http/impl/l;

    iput-object p2, p0, Lcom/transsion/http/impl/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/http/impl/j;->b:Lcom/transsion/http/impl/l;

    iget-object v1, v0, Lcom/transsion/http/impl/l;->c:Lcom/transsion/http/impl/StringCallback;

    iget v0, v0, Lcom/transsion/http/impl/l;->b:I

    iget-object v2, p0, Lcom/transsion/http/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/http/impl/StringCallback;->y(ILjava/lang/String;)V

    return-void
.end method
