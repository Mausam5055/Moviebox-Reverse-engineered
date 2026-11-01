.class Lcom/transsion/http/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/b/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/http/b/c;


# direct methods
.method constructor <init>(Lcom/transsion/http/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/b/b;->a:Lcom/transsion/http/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/b/b;->a:Lcom/transsion/http/b/c;

    invoke-static {v0}, Lcom/transsion/http/b/c;->a(Lcom/transsion/http/b/c;)Lam/f;

    move-result-object v0

    invoke-virtual {v0}, Lam/f;->a()V

    return-void
.end method
