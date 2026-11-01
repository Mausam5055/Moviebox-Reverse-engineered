.class public final synthetic Lcom/transsion/search_pugc/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/SearchManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/SearchManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/c;->a:Lcom/transsion/search_pugc/SearchManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/c;->a:Lcom/transsion/search_pugc/SearchManager;

    invoke-static {v0}, Lcom/transsion/search_pugc/SearchManager;->d(Lcom/transsion/search_pugc/SearchManager;)V

    return-void
.end method
