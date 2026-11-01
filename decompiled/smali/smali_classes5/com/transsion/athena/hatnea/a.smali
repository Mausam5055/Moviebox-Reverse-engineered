.class public final synthetic Lcom/transsion/athena/hatnea/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/athena/hatnea/atenha;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/athena/hatnea/atenha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/hatnea/a;->a:Lcom/transsion/athena/hatnea/atenha;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/hatnea/a;->a:Lcom/transsion/athena/hatnea/atenha;

    invoke-static {v0}, Lcom/transsion/athena/hatnea/atenha;->d(Lcom/transsion/athena/hatnea/atenha;)V

    return-void
.end method
