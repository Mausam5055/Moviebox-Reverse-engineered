.class public final synthetic Lcom/transsion/publish/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/a;->a:Lcom/transsion/publish/c;

    iput-object p2, p0, Lcom/transsion/publish/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/a;->a:Lcom/transsion/publish/c;

    iget-object v1, p0, Lcom/transsion/publish/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/publish/c;->b(Lcom/transsion/publish/c;Ljava/lang/String;)V

    return-void
.end method
