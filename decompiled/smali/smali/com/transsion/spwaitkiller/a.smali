.class public final synthetic Lcom/transsion/spwaitkiller/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/spwaitkiller/a;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/spwaitkiller/a;->a:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/transsion/spwaitkiller/ProxySWork;->a(Ljava/util/LinkedList;)V

    return-void
.end method
