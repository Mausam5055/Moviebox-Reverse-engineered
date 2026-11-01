.class public final synthetic Lcom/transsion/search/ad/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/ad/SearchHotAdHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/ad/SearchHotAdHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/ad/a;->a:Lcom/transsion/search/ad/SearchHotAdHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/ad/a;->a:Lcom/transsion/search/ad/SearchHotAdHelper;

    invoke-static {v0}, Lcom/transsion/search/ad/SearchHotAdHelper;->a(Lcom/transsion/search/ad/SearchHotAdHelper;)V

    return-void
.end method
