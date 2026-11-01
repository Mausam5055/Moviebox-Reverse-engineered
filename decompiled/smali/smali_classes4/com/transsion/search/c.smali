.class public final synthetic Lcom/transsion/search/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/SearchManager;

.field public final synthetic b:Lcom/transsion/search/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/SearchManager;Lcom/transsion/search/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/c;->a:Lcom/transsion/search/SearchManager;

    iput-object p2, p0, Lcom/transsion/search/c;->b:Lcom/transsion/search/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/c;->a:Lcom/transsion/search/SearchManager;

    iget-object v1, p0, Lcom/transsion/search/c;->b:Lcom/transsion/search/a;

    invoke-static {v0, v1}, Lcom/transsion/search/SearchManager;->b(Lcom/transsion/search/SearchManager;Lcom/transsion/search/a;)V

    return-void
.end method
