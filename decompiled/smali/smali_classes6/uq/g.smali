.class public final synthetic Luq/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luq/g;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    iput-boolean p2, p0, Luq/g;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luq/g;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    iget-boolean v1, p0, Luq/g;->b:Z

    invoke-static {v0, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->h0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    return-void
.end method
