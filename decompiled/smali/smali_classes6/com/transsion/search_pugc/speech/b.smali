.class public final synthetic Lcom/transsion/search_pugc/speech/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/speech/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/speech/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/b;->a:Lcom/transsion/search_pugc/speech/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/b;->a:Lcom/transsion/search_pugc/speech/c;

    invoke-static {v0}, Lcom/transsion/search_pugc/speech/c;->a(Lcom/transsion/search_pugc/speech/c;)V

    return-void
.end method
