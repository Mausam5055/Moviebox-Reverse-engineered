.class public final synthetic Lcom/transsion/postdetail/ui/fragment/f0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/f0;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/f0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/f0;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/f0;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->v0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/util/Map;)V

    return-void
.end method
