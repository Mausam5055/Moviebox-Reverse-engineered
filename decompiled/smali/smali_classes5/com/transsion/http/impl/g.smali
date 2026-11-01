.class Lcom/transsion/http/impl/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/transsion/http/impl/h;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/h;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/g;->b:Lcom/transsion/http/impl/h;

    iput-object p2, p0, Lcom/transsion/http/impl/g;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/impl/g;->b:Lcom/transsion/http/impl/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method
