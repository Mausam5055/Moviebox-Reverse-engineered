.class public final synthetic Lcom/transsion/search_pugc/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/SearchManager;

.field public final synthetic b:Lcom/transsion/search_pugc/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/b;->a:Lcom/transsion/search_pugc/SearchManager;

    iput-object p2, p0, Lcom/transsion/search_pugc/b;->b:Lcom/transsion/search_pugc/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/b;->a:Lcom/transsion/search_pugc/SearchManager;

    iget-object v1, p0, Lcom/transsion/search_pugc/b;->b:Lcom/transsion/search_pugc/a;

    invoke-static {v0, v1}, Lcom/transsion/search_pugc/SearchManager;->a(Lcom/transsion/search_pugc/SearchManager;Lcom/transsion/search_pugc/a;)V

    return-void
.end method
